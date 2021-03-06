/*
 * This program is free software; you can redistribute it and/or modify it under the 
 * terms of the GNU Lesser General Public License, version 2.1 as published by the Free Software 
 * Foundation.
 *
 * You should have received a copy of the GNU Lesser General Public License along with this 
 * program; if not, you can obtain a copy at http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html 
 * or from the Free Software Foundation, Inc., 
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 *
 * Copyright 2008 - 2009 Pentaho Corporation.  All rights reserved.
*/
package org.pentaho.platform.security.userroledao.ws;

import java.util.Comparator;


public class RoleComparator implements Comparator<ProxyPentahoRole> {

  public int compare(ProxyPentahoRole role1, ProxyPentahoRole role2) {
    
    String userName1 = role1.getName().toLowerCase();
    String userName2 = role2.getName().toLowerCase();
    
    int result = userName1.compareTo(userName2);
    if (result == 0) {
      result = role1.getName().compareTo(role2.getName());
    }
    
    return result;
  }

}
