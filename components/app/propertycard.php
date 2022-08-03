<?php

function getPropertyCards($propertiesArray)
{
    $propertyCards = '';

    foreach ($propertiesArray as $property) {
        $propertyEnlistedFor =  $property['enlisted_for'] == 'Both'
            ? 'Rent & Lease'
            : $property['enlisted_for'];
        $propertyAmenityIcons = getAmenityIcons($property);


        $propertyCards .= <<<CONTENT
        <div class="col p-1">
            <div class="card h-100 shadow">
                <div class="position-relative">
                    <a href="properties.php?id={$property['id']}">
                        <img src="resources/images/default-property.png" class="card-img-top" alt="...">
                    </a>
                    <span class="badge bg-warning position-absolute bottom-0 end-0 me-3 text-dark fw-light">
                        {$propertyEnlistedFor}
                    </span>
                </div>
            
                <div class="card-body">
                    <a href="properties.php?id={$property['id']}" class="text-decoration-none">
                        <h5 class="card-title">{$property['name']}</h5>
                    </a>
                    <div class="d-block" style="font-size: 0.9rem;">
                        <div>
                            <i class="bi bi-diagram-3-fill m-0 pe-2" title="Type" data-bs-toggle="tooltip" data-bs-placement="right"></i>
                            <span class="text-info">
                                {$property['type']}
                            </span>
                        </div>
                        <div>
                            <i class="bi bi-geo-fill m-0 pe-2" title="Location" data-bs-toggle="tooltip" data-bs-placement="right"></i>
                            <span class="text-secondary">
                                {$property['district']},&nbsp;{$property['division']}
                            </span>
                        </div>
                    </div>
                </div>

                <div class="card-footer">
                    <!-- //* amenity icons -->
                    <div class="d-flex flex-wrap justify-content-around">
                        {$propertyAmenityIcons}
                    </div>
                </div>
            </div> 
        </div>
        CONTENT;
    }

    return $propertyCards;
}

function getAmenityIcons($property)
{
    $amenityIcons = '';

    foreach ([
        'ac_type' => ($property['ac_type'] ==
            'Split'
            ? '<img width="25px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEIAAABCCAYAAADjVADoAAAABmJLR0QA/wD/AP+gvaeTAAADlElEQVR4nO2aS0hUURjHf6MTlVpaCBWBghUJFRQVPRCyXQ9BrAwiInBREdm2XQ8jqk0SvdYShNimTbmKHrsgA8uFbbKgF2GWlUpaTovv3Obo3Llzr3PuzDieH1zO9Tvnfvd/Ps/7DlgsFovFYrFYLBaDRFz+rgaWAAWZl5MRxoFPQC8QcyuwAehRmTPh6lF1nkAlMJgD4jJ9DQIVAFEViHPAfHV/B3hKkmaTB0SAbcABpM5ngSYnsxup+BsSx418JILUNYbU/f+AOFul38jflqATQ+oKqu7R5GUDswW4DSw06NOLAeAg8MwlrwPYBOxPkp+AyUDsBZYZ9JeKBcA+EitaouwRYJdLvismA3EDmX3KDPr04rt652R+AUeRFnErqFNncdGVlrTpRRdS517I39VjYEx2jXLgFPH1SNj8AC4D/S55h4CNQEuS/KSY6BqXyPzK8KKLjhLgr8o/46E3tK7xBBgx6C8Vw+qdkxkCOpHp9aFfZya7RicyYxQb9OnFEDDqYo8BdUGdmQwEiDA3cTmP30AUA9uBuSFqCYMR4BHSejzxG4i7wM50FGWRB8DuVIX8Dpar0tOSVVb7KRR0jOgFTgfXkhVakGNHXwQNRD/STaYDJ4MUtktshQ2EwgmEM/fPy5aQLODsiUYhPka8AtYAK4BryOGtTpFKy4HGkAWaolylRSRqrgWWq/tuPaMK+En2j9czfQ0h//yEKPXlgLhMXX3IsT6QeHQ/C1gPLCV/B9Jx4AOyDR/LspaZhduHIr+2oGVzlpvItHRYszUgu8F2zbYYeAe8BRZp9g5Vtl6zNSmf10PQGxoDyIB0T7O1Kds48Wl7D/HBq0HZoqpMTD3jcF/ZBsIQHNaAWDAp1e8jxJu4nl+YIt/NpzHydWYIjA2EwgZCYQOhSCcQlcg0d8KQlnRoRrRUTNVBOoE4juzqrpL4BdyZHsc12wuVduO9tB0DXqr755rd8TX5VK1MaWgEjqRUnYR0AuH84qSAiafEW4l/5Hmv2VuBdUCND981wFqkgg4fVVoMbNbsdcSn268+fBunGviDLHKGgSvAeSXGWSTVpvBRr5WtT1F2h1a2X72rVb07hqw6q6ZQDyNcIPk2t83jOYdS4DHyEabUR/l2j/dl/XS9GfhCXNAg8hW60OuhKRJFWoJ+iPQZOJauY1O7uSjSVQqA18BvQ36TMQdYiXTNXuRnABaLxWKxWCwWiyV3+Af4u7vkKAUMUAAAAABJRU5ErkJggg==">'
            : $property['ac_type'] ==
            'Window')
            ? '<img width="25px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAFd0lEQVR4nO2aa2wVRRTHfy20Vy0FbSOxPkChGGNMVNT4QeIrPqIRY+sTNUFJQI0mNVETUYgaEjURjYlGxUT0o2CEGkI0toIRNcYHvlATUBSttYBaoArYa1s//PfavcvMzu7evbdA95fc3Ls7M2dmzz1z5syZhYyMjIyMjIzRSpXvdzMwE6gdobFUin5gFfC9/+ZxwC5gaJR8dgLHAFR7CjgPqI+tywOX8eiZ/1fAwW72JnIwrIBRy9gyyBwEfkXzbACYgOZbTQqyNwDPJGi3CJhoKkhLAeuBZcC7wFfA3kB5DXAicD7Q6n0nsb6fgRcTtLsPiwIKzCGZN10JnJlgQFPRg+Rj9rc6QV8AmwyyboXkFtDlCehM2P4HYB7wLPASyZR4BPAY0GAo2wLMB/6NKiyOBXwENCUYsI0c8ELEvv0WcElIvUHgeF/d1CxgBXAT+87xUvgHuB3YDiyI0a4DKeFwQ1kX8FMUIXEU8DFwM8UP3wxciczwS+ANFGoGqQUuBc7y6m4D3vJkFliIzPrOiOMZQkpIBdcU6AKO9tWvQvNvIFDvM/QQfi5A3tsk91XgMF/dGuDDkHGMmBOcC3T7rh8B7jfUmw48iRQKcBHaeBxikXu9V3aVd50HbkFLac4xpjrgXuBQQ9nvwFPIF0QizAKCWp+EzNxWvw9ZyDjgl5B6/s/FgT4WRxjLZQ6ZU311S7KARwPXMwmP6uq88rnAsRHkF2T65/Ni4C7CreBtYBba2ATpRkutE5cCvgU+CNw7ytFmB7KQWVEG4DEhcN2Dps41IW0GkA8pCVc4+prh3l+ONoPIsZ0eYxzrDfdej9E+MS4LWGu494WjTSNyZFEd7CZgqeH+Gke7HJpmdYayrcArEfsH7E4wuKSB5rfLufWiEPc54Dff/S7gR2RF29CDh21SurE7wcsdY2j21U3kBHu9T5A8cBvQjtkZ7gHOBb72rh8CPgVeBpYghURlM/awuxM5ynGGsh4COT8XJgtwhZItSEGm4CbIg77yLcATKA/pYjV2C4iD1QLCnOCQQ+hK4CT0MF2++6YdmP/eJBTAfIfmcBiRA5lSMVnAHzFlTEEPtNX7XaAe2GiQX9i1hSnhPcpsAWE+oAGtzzsNZWOBe4AbgSORQxsETkF+4RPk4PYANwDTLH1UAU+jNb/HUH5CyPhywGxLWT8prQLnWOovs9Q3fRaiHWRYnTZDHw1IqTYLaAiRF3TeiXwAKHcXZAZwnaOdnw6URAnjDEvfVYb7qeJSgCkUPTuG/N3A5yhsDcMUb7TG6CcxLgWcxr7/jisU9tOOMj6u/cP2wHUjw1vkshIlNf1A4LoD9z8KWvoe937vctRdFbhuwxzipk4UBbTgnaN5bCba4cQChqPB9pB6a1AqrcBktMJUFFdKbCPFh6djgOctdXcDdwfk16L9e7DumxRvhauRhdnGkfoqEHXHNg2tq9eipWkAuANteK5G/9oOlMpageICP/0og9OKVpF+7+HXUhxxLkJptIoT9VxgCeU7UG2L0P+IWUCBeSgPPwf4O2ZbG2PQPz8/Zrs89pOpOCsVEP9s8BuU4y+VKcA7Mfqt6G4wjJNRdLeU4sRDVCaiJXIDcGHCMaRCKcfj1UiLs9FSthw5NVsiogkdkrQAV2A/K6goabwfUI08d8F796FY4U+0WjSiHEBjCn01oZUoLqasEVCeN0TqgVPLIBeUaV6epsBR/45QQQGRXyQ4iMjDsALeJ90z//2dvXgnXv6Ew3TkodN4m2t/Jo8SuqbTqNGHK+U0A3teEHTy05fecBIxHm3MbKxDL10k4mHCQ9Oox9/lZDLupKwVVxzQiVLbNkwp80rTi/ltlQLrKjWQjIyMjIyMjAOL/wA2vHrROVW4uQAAAABJRU5ErkJggg==">'
            : // central ac
            '<img width="29px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAYAAACOEfKtAAAABmJLR0QA/wD/AP+gvaeTAAAB60lEQVR4nO3aQU7DMBAF0C9O0fYocIQgxEEQq7YcoJwAcZ2wqbgLbFsWsCEs4kCa1sGJJ+mM858UVWndUTxyp3FsgIiIiIiIiIh8rgHkAD4AFIkee9fHTChnvx4VdG7sYyOSOZQjrwDwCWAJYC4VWKE5gBXKvhYQGokvLthSIpgRa5R9ziWC7V2wmUQwI2Yo+7yTCFbVhKkJ6vfFCBeSNCYwEhMYKSSB7+71csgLUebKvb5JBLvH4Q3mtvbZa4Ln9b7e4R8hI/AJwG3tvP7P9J3geeUGwDMETeV2plM/+ScSiQmMxARGYgIjMYGRmMBITGAkLQlszgi2OH7E3jaDOBstCWzOCE5pm0GYwJnICVpGoFlMYCTJBFpYeB9s4TxEW22wuPDuWzgfrNb7AltaeA9ZOB8sgTsXuJkgiwvvvoXzhXtfZD24KXfBV433fYnVzJeoB5xOrIgMfz/VtbsIwO79Yf26FyiT9wX/T1vEBuFF2uohtivLJ0M5xKs9MykcZ729ISKiQyEPPLW16WWopzEhDzy1tSGi4FqjvV0w6RoYWmu0tyOamC61xVrbVlI1sEttsdaWKGFda4n19kdia2DXWmK9PdGE9ak3Y32ntzF3Z/WpN2N9h4gGoWYzuY/2HaqsZ0REREREKfoBw78cdd1pIbkAAAAASUVORK5CYII=">',
        'elevator' =>
        '<img width="25px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAADY0lEQVR4nO3bS4gcRRgH8N/GBNllCQiKBHwkUQyIJzWCKLoeJDmshxDx4sUHGJNz4gOM6wOU+Mgxoh4SHycTRXAFLxJEQUg0IHgS8gQP0VPcYWPChvFQ1e4w6d7tnm1SWjt/aKqm619V3/yn6qv+aqrhMLr/o+sidmgJKzGBOZxZhLsKN+ICfm/LgIbtjmINNrbYvy5O1uCN4W/8gZEW+5+MNnxSgzsRufvb6nxFA+4sjuI63N6WAXgwpt+12GZtNBGA4C/gaVzVQv/XYktf21ccdacArEdH+45tumb/rU+BlQ35J/AwpnCrpfuCC/gWLy2xnYHRVAD4EZvbNiQVmvqA7DAUILUBqTEUYIA6z+F4vPZVcA7F8t/wVEn5GhyJnF9w9wB2tIJBVoGbhOcBuL6kfAVui5xLWF3CGcOGWDaDqwewozU0eRBKjaSxQJZY9gJU+YD9eOBKGlKBOezGZ4vwVmEb7o35xTCDL/EV5T4g9a5P79U736t8wMEB296+0CpwCusWKK9Ct6fuhBDmHsCTDdsp6i6GtXhU2NF6An/VqHMLPsWuQZbB/xpujulh9fcUfsZbWJeDEyxC8m7Del3yXwXuwge4poqQwxRYCO8JO8jnsKuMkPMIeMT89vkO5Y/t2Qowgpdj/ogQeyyrETApRJjHYr6D7UpGQa4C7I7pFP7E+8Io2NlPzFGASWHud3AHnje/VF7mC3JcBbbGdBxv9pWNYRM+Lm7kKMAr+FX5d5sRdqv+RY4CnMa7dck5+oBGyHEErBX8QNl36wih9GxxI0cBpoSwuAodfFR8yHEKfB7TDl7EC9gb783im15yjgJMCwc5xoXVYI/5UHkfzvaScxQAXo/pq8KJlm3Cr/9OPzFXAabxE+6M+XEhND7bT8xVgC5ei/l7hF//7TJirgIQtryPxvxlc79AzgLAs/gQb1QRcnwO6MUxPLMQIYcRUCxxTQ9sjZDHCDgd04dwP87XqLNBOJ57MgcBTgn/HT6G7xvW3ZODAPC4cNT2PvX/HP0CX+ciwJyw1FUd2alEDk5wSRgKkNqA1BgKkNqA1BgKkNqA1BgKkNqA1BgKkNqA1BgKkNqA1Fj2AhTh8A3C2xu9KLtXF0Xd0fh5q+aHr8vqjlZwl4QfpD8Q3fT1+bLXcAbCP0nsK4ITZmj7AAAAAElFTkSuQmCC">',
        'gym' =>
        '<img width="25px" src="data:image/png;base64,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">',
        'laundry' =>
        '<img width="25px" src="data:image/png;base64,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">',
        'microwave' =>
        '<img width="25px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABmJLR0QA/wD/AP+gvaeTAAABs0lEQVRoge3ZP08UQRzG8c8dgoW2JqJQWZkYa61IrKQi8TXYGWteAIlAQ8ErIJTaKibEWBoLQ0FBQ2z4cyS2VDRAsZu4nLt7t9zC7pzzTX7NzGbvefKbfWZ2j0gkEolERmMKq+jhIrA6xkrqwUoLBI1ay520E9NlLQuAk47EUfB0mxZQF2Nj5E7JXOfWVBQz9LIfm46EZOQLZjCLr3kXFGVzG8jqmcmMz/bNXYTUkYG0pSMTOWNZPVuuLq1/9F7HyCO8xUfs4xRnOMQnvJGefwbwFEv4jQPcKzEyqIY20sUCvuF8iBv/wRpe4H5az1KT69jru34nx/yNGPmZmTvDNt7jJR5iEk/wDr+G/PFTbGBO/r51I0Z+SJbAIh7kzPfzXNKRXX+XXg/f8QGvcHfAPbJ6PuOx5DnZGsVIEwQZv3mpVYlQUqu2+I2pVVL/ZWrVZqQJYvwGTSgdKY3fss9B8Z29CeIHurYxVkZ6TYuogeMuNptWUQObJCfOZcmfJlXONm2oI8m5baporyhLstvaXyppKHrYjwrGDyvLuT61aJiXvLFl23iA1yNJq0YbNEQikbZxCVgC5vaQmqGoAAAAAElFTkSuQmCC">',
        'parking' =>
        '<i class="bi bi-p-square m-0"></i>',
        'pharmacy' =>
        '<i class="bi bi-capsule-pill m-0"></i>',
        'prayer_area' =>
        '<img width="25px" src="data:image/png;base64,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">',
        'refrigerator' =>
        '<img width="25px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAABmJLR0QA/wD/AP+gvaeTAAACY0lEQVR4nO3dzWpTQRyG8aeidtXaZdE7US/Aumn1Hrrw8yqVKn4gWLBuW7fdaPdxMQk5jXhs5WTmPcnzg4FDGzj/mTc5mQkDA5IkSZIkSZI0ApvAK+AdcAFMQtsFcAS8BG4vZSQC3AO+0H6wr9s+A3eXMB5NbTIP4xuwD2w1rajfFnAAnFBq/sSKfVJeMw9jp3Et17HDPJQXjWsZ1HtKp/Yr3/eYy4+f457/ddsZsDd93dPp347qlFzHL0qnkh9TXQ+A0+n1NqX2n+3KGd7snTcmk4XrKvXfqHETXZ2BhDGQMAmBPKbMarozGy1Z35fiGXCfyzObBF8712OclPTq69DibCaRs6x1ZSBhDCSMgYQxkDAGEuZm6wKAH5Q1yAZlTaIK+ubxe5QF4SnwqFpF17NWC8MxcGG4rgwkjIGEMZAwtae9Y/5ir6J2IBuV7zeUam8kH1lhDCSMgYQxkDAJgbjrpIEx7jrpGvtvcX9w18kVJTyy1GEgYQwkjIGEMZAwBhLGQMIYSBgDCWMgYQwkjFtJ15RbScOMvUP+2ruuDCSMgYQxkDAGEsZAwhhIGAMJYyBhDCSMgYQxkDAGEsZAwhhIGAMJYyBhDCSMgYSpFcjsqIfucRV953ccc1nfa5fRuve/s9CHlXBE6ehB60L+w+xAl7etCxnSc0qnThjfkUffKbU/a1zLoG4BH5mH8oRyck2qbconYxbGBzI2FQ5qlzbH3g3RdpcwHhEmwCHwBjin/UD/rZ1Pazxk3Bv8/mmMnatac+11yGxj9Vg8ZMU3gM82Vrd+JF21JW8AlyRJkiRJS/cbmbt1+kGLnygAAAAASUVORK5CYII=">',
        'tv' =>
        '<i class="bi bi-tv m-0"></i>',
        'wheelchair' =>
        '<img width="25px" src="data:image/png;base64,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">',
        'wifi' =>
        '<i class="bi bi-wifi m-0"></i>',
    ]
        as $amenityName => $amenityIcon) {
        $transformedAmenityName = ucwords(strtolower(preg_replace("/_/", " ", $amenityName)));

        $amenityIcons .= $property[$amenityName]
            ? // print icons if amenity values are not null
            ($amenityName != 'ac_type'
                ? "<span 
                    class=\"d-flex justify-content-center align-items-center m-1\"
                    title=\"$transformedAmenityName\"
                    data-bs-toggle=\"tooltip\" 
                    data-bs-placement=\"bottom\"
                    >$amenityIcon</span>"
                : "<span 
                    class=\"d-flex justify-content-center align-items-center m-1\"
                    title=\"$property[$amenityName] AC\"
                    data-bs-toggle=\"tooltip\" 
                    data-bs-placement=\"bottom\"
                    >$amenityIcon</span>")
            : null;
    }

    return $amenityIcons;
}
