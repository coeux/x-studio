-- This file is generated by scicmds_autogen v1.0.0 automatically.
local scicmds = {
    SCI_LINEDOWN = 2300,
    SCI_LINEDOWNEXTEND = 2301,
    SCI_LINEDOWNRECTEXTEND = 2426,
    SCI_LINESCROLLDOWN = 2342,
    SCI_LINEUP = 2302,
    SCI_LINEUPEXTEND = 2303,
    SCI_LINEUPRECTEXTEND = 2427,
    SCI_LINESCROLLUP = 2343,
    SCI_PARADOWN = 2413,
    SCI_PARADOWNEXTEND = 2414,
    SCI_PARAUP = 2415,
    SCI_PARAUPEXTEND = 2416,
    SCI_CHARLEFT = 2304,
    SCI_CHARLEFTEXTEND = 2305,
    SCI_CHARLEFTRECTEXTEND = 2428,
    SCI_CHARRIGHT = 2306,
    SCI_CHARRIGHTEXTEND = 2307,
    SCI_CHARRIGHTRECTEXTEND = 2429,
    SCI_WORDLEFT = 2308,
    SCI_WORDLEFTEXTEND = 2309,
    SCI_WORDRIGHT = 2310,
    SCI_WORDRIGHTEXTEND = 2311,
    SCI_WORDLEFTEND = 2439,
    SCI_WORDLEFTENDEXTEND = 2440,
    SCI_WORDRIGHTEND = 2441,
    SCI_WORDRIGHTENDEXTEND = 2442,
    SCI_WORDPARTLEFT = 2390,
    SCI_WORDPARTLEFTEXTEND = 2391,
    SCI_WORDPARTRIGHT = 2392,
    SCI_WORDPARTRIGHTEXTEND = 2393,
    SCI_HOME = 2312,
    SCI_HOMEEXTEND = 2313,
    SCI_HOMERECTEXTEND = 2430,
    SCI_HOMEDISPLAY = 2345,
    SCI_HOMEDISPLAYEXTEND = 2346,
    SCI_HOMEWRAP = 2349,
    SCI_HOMEWRAPEXTEND = 2450,
    SCI_VCHOME = 2331,
    SCI_VCHOMEEXTEND = 2332,
    SCI_VCHOMERECTEXTEND = 2431,
    SCI_VCHOMEWRAP = 2453,
    SCI_VCHOMEWRAPEXTEND = 2454,
    SCI_VCHOMEDISPLAY = 2652,
    SCI_VCHOMEDISPLAYEXTEND = 2653,
    SCI_LINEEND = 2314,
    SCI_LINEENDEXTEND = 2315,
    SCI_LINEENDRECTEXTEND = 2432,
    SCI_LINEENDDISPLAY = 2347,
    SCI_LINEENDDISPLAYEXTEND = 2348,
    SCI_LINEENDWRAP = 2451,
    SCI_LINEENDWRAPEXTEND = 2452,
    SCI_DOCUMENTSTART = 2316,
    SCI_DOCUMENTSTARTEXTEND = 2317,
    SCI_DOCUMENTEND = 2318,
    SCI_DOCUMENTENDEXTEND = 2319,
    SCI_PAGEUP = 2320,
    SCI_PAGEUPEXTEND = 2321,
    SCI_PAGEUPRECTEXTEND = 2433,
    SCI_PAGEDOWN = 2322,
    SCI_PAGEDOWNEXTEND = 2323,
    SCI_PAGEDOWNRECTEXTEND = 2434,
    SCI_STUTTEREDPAGEUP = 2435,
    SCI_STUTTEREDPAGEUPEXTEND = 2436,
    SCI_STUTTEREDPAGEDOWN = 2437,
    SCI_STUTTEREDPAGEDOWNEXTEND = 2438,
    SCI_DELETEBACK = 2326,
    SCI_DELETEBACKNOTLINE = 2344,
    SCI_DELWORDLEFT = 2335,
    SCI_DELWORDRIGHT = 2336,
    SCI_DELWORDRIGHTEND = 2518,
    SCI_DELLINELEFT = 2395,
    SCI_DELLINERIGHT = 2396,
    SCI_LINEDELETE = 2338,
    SCI_LINECUT = 2337,
    SCI_LINECOPY = 2455,
    SCI_LINETRANSPOSE = 2339,
    SCI_LINEREVERSE = 2354,
    SCI_LINEDUPLICATE = 2404,
    SCI_LOWERCASE = 2340,
    SCI_UPPERCASE = 2341,
    SCI_CANCEL = 2325,
    SCI_EDITTOGGLEOVERTYPE = 2324,
    SCI_NEWLINE = 2329,
    SCI_FORMFEED = 2330,
    SCI_TAB = 2327,
    SCI_BACKTAB = 2328,
    SCI_SELECTIONDUPLICATE = 2469,
    SCI_VERTICALCENTRECARET = 2619,
    SCI_MOVESELECTEDLINESUP = 2620,
    SCI_MOVESELECTEDLINESDOWN = 2621,
    SCI_SCROLLTOSTART = 2628,
    SCI_SCROLLTOEND = 2629,
    SCI_QUICKADDNEXT = 2911,
}

local scikeys = {
    F24 = 0x87,
    F14 = 0x7D,
    F11 = 0x7A,
    PRIOR = 306,
    F9 = 0x78,
    F5 = 0x74,
    F10 = 0x79,
    BACK = 8,
    TAB = 9,
    F6 = 0x75,
    F13 = 0x7C,
    F12 = 0x7B,
    ADD = 310,
    F19 = 0x82,
    F16 = 0x7F,
    F3 = 0x72,
    F23 = 0x86,
    RETURN = 13,
    F18 = 0x81,
    F21 = 0x84,
    F17 = 0x80,
    DOWN = 300,
    HOME = 304,
    F8 = 0x77,
    DELETE = 308,
    WIN = 313,
    UP = 301,
    LEFT = 302,
    RIGHT = 303,
    END = 305,
    NEXT = 307,
    INSERT = 309,
    ESCAPE = 7,
    SUBTRACT = 311,
    DIVIDE = 312,
    RWIN = 314,
    MENU = 315,
    F4 = 0x73,
    F1 = 0x70,
    F2 = 0x71,
    F7 = 0x76,
    F15 = 0x7E,
    F20 = 0x83,
    F22 = 0x85,
}
local translateKeyMap = function(keyMap)
    if next(keyMap) then
        local strupper = string.upper
        for _,v in ipairs(keyMap) do
            v.cmd = scicmds[strupper(v.cmd)] -- string to number
            local keysrc = strupper(v.key)
            local key = scikeys[keysrc]
            if key then
                v.key = key
            else
                v.key = string.byte(keysrc)
            end
        end
    end
end

local SHIFT,CTRL,ALT = 1,2,4
return {SHIFT,CTRL,ALT,translateKeyMap}
