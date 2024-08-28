/*global define, describe, it, expect */
define([
	"autoprovisioning-help/apclient"
], function (ApClient) {
    'use strict';

    describe("ApClient", function () {

        it("ApClient should be defined", function () {
            expect(ApClient).not.to.be.undefined;
        });
    });

});