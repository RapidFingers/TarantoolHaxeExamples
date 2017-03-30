/*
 * Copyright (c) 2017 Grabli66
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
 * Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
 * AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH
 * THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import zephyr.tag.*;
import zephyr.tag.link.*;
import zephyr.tag.form.*;
import zephyr.tag.button.*;
import zephyr.tag.input.*;
import zephyr.View;
import zephyr.HtmlBuilder.*;

/**
 *  Sing in/sungup form view
 */
class MessageView extends RootView {

    /**
     *  Message
     */
    var message : String;

    /**
     *  Constructor
     *  @param message - 
     */
    public function new (message : String) {
        super ();
        this.message = message;
    }

    /**
     *  Render view
     *  @return Tag
     */
    public override function renderContent () : Tag {
        return div ({ css : "form" }, [            
            h1 ({ text : message }),
            a ({ css : "button button-block", text : "Back", href : "/" })
        ]);
    }
}