/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package org.isft.logic.updater;

import java.util.HashMap;

/**
 *
 * @author jcafferata
 */
public interface UpdaterInterface {
    public void insert(HashMap parameters) throws Exception;
    public void delete(HashMap parameters) throws Exception;
    public void update(HashMap parameters) throws Exception;
}
