contract SVGGenerator {


    function generateSVG(string memory id, string memory username, string memory level) public view returns(string memory){

        return string(
            abi.encodePacked(
                '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="290" height="500" viewBox="0 0 290 500">',
                '<defs><filter id="f1"><feImage result="p0" xlink:href="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0nMjkwJyBoZWlnaHQ9JzUwMCcgdmlld0JveD0nMCAwIDI5MCA1MDAnIHhtbG5zPSdodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2Zyc+PHJlY3Qgd2lkdGg9JzI5MHB4JyBoZWlnaHQ9JzUwMHB4JyBmaWxsPScjNzY3ZmU5Jy8+PC9zdmc+"/><feImage result="p1" xlink:href="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0nMjkwJyBoZWlnaHQ9JzUwMCcgdmlld0JveD0nMCAwIDI5MCA1MDAnIHhtbG5zPSdodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2Zyc+PGNpcmNsZSBjeD0nNzYnIGN5PScxODEnIHI9JzEyMHB4JyBmaWxsPScjYzAyYWFhJy8+PC9zdmc+"/><feImage result="p2" xlink:href="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0nMjkwJyBoZWlnaHQ9JzUwMCcgdmlld0JveD0nMCAwIDI5MCA1MDAnIHhtbG5zPSdodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2Zyc+PGNpcmNsZSBjeD0nMjA0JyBjeT0nMzEyJyByPScxMjBweCcgZmlsbD0nI2Q3Y2EwZScvPjwvc3ZnPg=="/><feImage result="p3" xlink:href="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0nMjkwJyBoZWlnaHQ9JzUwMCcgdmlld0JveD0nMCAwIDI5MCA1MDAnIHhtbG5zPSdodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2Zyc+PGNpcmNsZSBjeD0nNzknIGN5PScyNjInIHI9JzEwMHB4JyBmaWxsPScjNzU2Y2MyJy8+PC9zdmc+"/><feBlend mode="overlay" in="p0" in2="p1"/><feBlend mode="exclusion" in2="p2"/><feBlend mode="overlay" in2="p3" result="blendOut"/><feGaussianBlur in="blendOut" stdDeviation="42"/></filter>',
                '<clipPath id="corners"><rect width="290" height="500" rx="42" ry="42"/></clipPath>',
                '<path id="text-path-a" d="M40 12 H250 A28 28 0 0 1 278 40 V460 A28 28 0 0 1 250 488 H40 A28 28 0 0 1 12 460 V40 A28 28 0 0 1 40 12 z"/>',
                '<path id="minimap" d="M234 444C234 457.949 242.21 463 253 463"/>',
                '<filter id="top-region-blur"><feGaussianBlur in="SourceGraphic" stdDeviation="24"/></filter>',
                '<linearGradient id="grad-up" x1="1" x2="0" y1="1" y2="0"><stop offset="0.0" stop-color="white" stop-opacity="1"/><stop offset=".9" stop-color="white" stop-opacity="0"/></linearGradient>',
                '<linearGradient id="grad-down" x1="0" x2="1" y1="0" y2="1"><stop offset="0.0" stop-color="white" stop-opacity="1"/><stop offset="0.9" stop-color="white" stop-opacity="0"/></linearGradient>',
                '<mask id="fade-up" maskContentUnits="objectBoundingBox"><rect width="1" height="1" fill="url(#grad-up)"/></mask>',
                '<mask id="fade-down" maskContentUnits="objectBoundingBox"><rect width="1" height="1" fill="url(#grad-down)"/></mask>',
                '<mask id="none" maskContentUnits="objectBoundingBox"><rect width="1" height="1" fill="white"/></mask>',
                '<linearGradient id="grad-symbol"><stop offset="0.7" stop-color="white" stop-opacity="1"/><stop offset=".95" stop-color="white" stop-opacity="0"/></linearGradient>',
                '<mask id="fade-symbol" maskContentUnits="userSpaceOnUse"><rect width="290px" height="200px" fill="url(#grad-symbol)"/></mask>',
                '</defs><g clip-path="url(#corners)"><rect fill="767fe9" x="0px" y="0px" width="290px" height="500px"/><rect style="filter: url(#f1)" x="0px" y="0px" width="290px" height="500px"/>',
                '<g style="filter:url(#top-region-blur); transform:scale(1.5); transform-origin:center top;"><rect fill="none" x="0px" y="0px" width="290px" height="500px"/><ellipse cx="50%" cy="0px" rx="180px" ry="120px" fill="#000" opacity="0.85"/></g>',
                '<rect x="0" y="0" width="290" height="500" rx="42" ry="42" fill="rgba(0,0,0,0)" stroke="rgba(255,255,255,0.2)"/></g>',
                '<g mask="url(#fade-symbol)"><rect fill="none" x="0px" y="0px" width="290px" height="200px"/> <text y="70px" x="32px" fill="white" font-family="Courier New, monospace" font-weight="200" font-size="36px">Test</text><text y="115px" x="32px" fill="white" font-family="Courier New, monospace" font-weight="200" font-size="36px">Account</text></g><rect x="16" y="16" width="258" height="468" rx="26" ry="26" fill="rgba(0,0,0,0)" stroke="rgba(255,255,255,0.2)"/>', 
                '<g style="transform:translate(29px, 384px)"><rect width="98px" height="26px" rx="8px" ry="8px" fill="rgba(0,0,0,0.6)"/><text x="12px" y="17px" font-family="Courier New, monospace" font-size="12px" fill="white">',
                '<tspan fill="rgba(255,255,255,0.6)">ID: </tspan>',
                id,
                '</text></g> <g style="transform:translate(29px, 414px)"><rect width="220" height="26px" rx="8px" ry="8px" fill="rgba(0,0,0,0.6)"/><text x="12px" y="17px" font-family="Courier New, monospace" font-size="12px" fill="white">',
                '<tspan fill="rgba(255,255,255,0.6)">Username: </tspan>',
                username,
                '</text></g> <g style="transform:translate(29px, 444px)"><rect width="140px" height="26px" rx="8px" ry="8px" fill="rgba(0,0,0,0.6)"/><text x="12px" y="17px" font-family="Courier New, monospace" font-size="12px" fill="white">',
                '<tspan fill="rgba(255,255,255,0.6)">Level: </tspan>',
                level,
                '</text></g></svg>'
            )
        );

        


    }


}