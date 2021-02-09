package utt.doantotnghiep.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import utt.doantotnghiep.common.Constant;

@Controller
public class AccessDenieController {

    @RequestMapping(value = {"/forbidden"}, method = RequestMethod.GET)
    public String product() {
        return Constant.TEMPLATE_VIEW.ACCESS_DENIED;
    }
}
