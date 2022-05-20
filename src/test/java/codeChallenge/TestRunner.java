package codeChallenge;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate testCodeChallenge() {
        return Karate.run("codeChallenge").relativeTo(getClass());
    }

}
