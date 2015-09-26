package org.cghr.hc.controller.grid

import org.cghr.commons.db.DbAccess
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

/**
 * Created by ravitej on 8/4/14.
 */
@RestController
@RequestMapping("/GridService/report")
class ReportService {


    @Autowired
    DbAccess dbAccess

    Map reports = [
            "11": "select * from user"
    ]

    @RequestMapping("/{reportId}")
    List getReport(@PathVariable("reportId") String reportId) {


        constructJsonResponse(reports[reportId], [])
    }

    List constructJsonResponse(String sql, List params = []) {

        dbAccess.rows(sql, params)

    }


}
