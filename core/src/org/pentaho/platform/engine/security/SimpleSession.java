/*
 * This program is free software; you can redistribute it and/or modify it under the 
 * terms of the GNU General Public License, version 2 as published by the Free Software 
 * Foundation.
 *
 * You should have received a copy of the GNU General Public License along with this 
 * program; if not, you can obtain a copy at http://www.gnu.org/licenses/gpl-2.0.html 
 * or from the Free Software Foundation, Inc., 
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 */
package org.pentaho.platform.engine.security;

import java.security.Principal;

import org.pentaho.platform.api.engine.IPentahoSession;
import org.pentaho.platform.api.engine.IPermissionRecipient;

public class SimpleSession implements IPermissionRecipient {

  // TODO mlowery Be careful about storing IPentahoSessions. They are transient objects. (Since they are based on
  // HttpSessions.)
  IPentahoSession session;

  public SimpleSession(final IPentahoSession session) {
    this.session = session;
  }

  public String getName() {
    Principal principal = SecurityHelper.getInstance().getAuthentication();
    return null != principal ? principal.getName() : null;
  }

  public IPentahoSession getSession() {
    return session;
  }
}
