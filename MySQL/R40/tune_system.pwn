#define FILTERSCRIPT

#include <a_samp>
#include <a_mysql> 	// http://forum.sa-mp.com/showthread.php?t=56564 	@	https://github.com/pBlueG/SA-MP-MySQL/releases
#include <sscanf2> 	// http://forum.sa-mp.com/showthread.php?t=602923 	@ 	https://github.com/maddinat0r/sscanf/releases
#include <zcmd> 	// http://forum.sa-mp.com/showthread.php?t=91354 	@ 	http://pastebin.com/raw/SbJc7iXa

#define     UNLOADFS_DELAY        5000 // interval (in milliseconds)

#define     MYSQL_HOST            "host_here"
#define     MYSQL_USER            "user_here"
#define     MYSQL_PASSWORD        "password_here"
#define     MYSQL_DATABASE        "database_here"

enum
{
    DIALOG_UNUSED = 491,

    DIALOG_TUNE,
    DIALOG_TUNE_2,
    DIALOG_PAINTJOB
};

static const gVehicleColors[] =
{
    0x000000AA, 0xF5F5F5AA, 0x2A77A1AA, 0x840410AA, 0x263739AA, 0x86446EAA, 0xD78E10AA, 0x4C75B7AA, 0xBDBEC6AA, 0x5E7072AA,
    0x46597AAA, 0x656A79AA, 0x5D7E8DAA, 0x58595AAA, 0xD6DAD6AA, 0x9CA1A3AA, 0x335F3FAA, 0x730E1AAA, 0x7B0A2AAA, 0x9F9D94AA,
    0x3B4E78AA, 0x732E3EAA, 0x691E3BAA, 0x96918CAA, 0x515459AA, 0x3F3E45AA, 0xA5A9A7AA, 0x635C5AAA, 0x3D4A68AA, 0x979592AA,
    0x421F21AA, 0x5F272BAA, 0x8494ABAA, 0x767B7CAA, 0x646464AA, 0x5A5752AA, 0x252527AA, 0x2D3A35AA, 0x93A396AA, 0x6D7A88AA,
    0x221918AA, 0x6F675FAA, 0x7C1C2AAA, 0x5F0A15AA, 0x193826AA, 0x5D1B20AA, 0x9D9872AA, 0x7A7560AA, 0x989586AA, 0xADB0B0AA,
    0x848988AA, 0x304F45AA, 0x4D6268AA, 0x162248AA, 0x272F4BAA, 0x7D6256AA, 0x9EA4ABAA, 0x9C8D71AA, 0x6D1822AA, 0x4E6881AA,
    0x9C9C98AA, 0x917347AA, 0x661C26AA, 0x949D9FAA, 0xA4A7A5AA, 0x8E8C46AA, 0x341A1EAA, 0x6A7A8CAA, 0xAAAD8EAA, 0xAB988FAA,
    0x851F2EAA, 0x6F8297AA, 0x585853AA, 0x9AA790AA, 0x601A23AA, 0x20202CAA, 0xA4A096AA, 0xAA9D84AA, 0x78222BAA, 0x0E316DAA,
    0x722A3FAA, 0x7B715EAA, 0x741D28AA, 0x1E2E32AA, 0x4D322FAA, 0x7C1B44AA, 0x2E5B20AA, 0x395A83AA, 0x6D2837AA, 0xA7A28FAA,
    0xAFB1B1AA, 0x364155AA, 0x6D6C6EAA, 0x0F6A89AA, 0x204B6BAA, 0x2B3E57AA, 0x9B9F9DAA, 0x6C8495AA, 0x4D8495AA, 0xAE9B7FAA,
    0x406C8FAA, 0x1F253BAA, 0xAB9276AA, 0x134573AA, 0x96816CAA, 0x64686AAA, 0x105082AA, 0xA19983AA, 0x385694AA, 0x525661AA,
    0x7F6956AA, 0x8C929AAA, 0x596E87AA, 0x473532AA, 0x44624FAA, 0x730A27AA, 0x223457AA, 0x640D1BAA, 0xA3ADC6AA, 0x695853AA,
    0x9B8B80AA, 0x620B1CAA, 0x5B5D5EAA, 0x624428AA, 0x731827AA, 0x1B376DAA, 0xEC6AAEAA, 0x000000AA, 0x177517AA, 0x210606AA,
    0x125478AA, 0x452A0DAA, 0x571E1EAA, 0x010701AA, 0x25225AAA, 0x2C89AAAA, 0x8A4DBDAA, 0x35963AAA, 0xB7B7B7AA, 0x464C8DAA,
    0x84888CAA, 0x817867AA, 0x817A26AA, 0x6A506FAA, 0x583E6FAA, 0x8CB972AA, 0x824F78AA, 0x6D276AAA, 0x1E1D13AA, 0x1E1306AA,
    0x1F2518AA, 0x2C4531AA, 0x1E4C99AA, 0x2E5F43AA, 0x1E9948AA, 0x1E9999AA, 0x999976AA, 0x7C8499AA, 0x992E1EAA, 0x2C1E08AA,
    0x142407AA, 0x993E4DAA, 0x1E4C99AA, 0x198181AA, 0x1A292AAA, 0x16616FAA, 0x1B6687AA, 0x6C3F99AA, 0x481A0EAA, 0x7A7399AA,
    0x746D99AA, 0x53387EAA, 0x222407AA, 0x3E190CAA, 0x46210EAA, 0x991E1EAA, 0x8D4C8DAA, 0x805B80AA, 0x7B3E7EAA, 0x3C1737AA,
    0x733517AA, 0x781818AA, 0x83341AAA, 0x8E2F1CAA, 0x7E3E53AA, 0x7C6D7CAA, 0x020C02AA, 0x072407AA, 0x163012AA, 0x16301BAA,
    0x642B4FAA, 0x368452AA, 0x999590AA, 0x818D96AA, 0x99991EAA, 0x7F994CAA, 0x839292AA, 0x788222AA, 0x2B3C99AA, 0x3A3A0BAA,
    0x8A794EAA, 0x0E1F49AA, 0x15371CAA, 0x15273AAA, 0x375775AA, 0x060820AA, 0x071326AA, 0x20394BAA, 0x2C5089AA, 0x15426CAA,
    0x103250AA, 0x241663AA, 0x692015AA, 0x8C8D94AA, 0x516013AA, 0x090F02AA, 0x8C573AAA, 0x52888EAA, 0x995C52AA, 0x99581EAA,
    0x993A63AA, 0x998F4EAA, 0x99311EAA, 0x0D1842AA, 0x521E1EAA, 0x42420DAA, 0x4C991EAA, 0x082A1DAA, 0x96821DAA, 0x197F19AA,
    0x3B141FAA, 0x745217AA, 0x893F8DAA, 0x7E1A6CAA, 0x0B370BAA, 0x27450DAA, 0x071F24AA, 0x784573AA, 0x8A653AAA, 0x732617AA,
    0x319490AA, 0x56941DAA, 0x59163DAA, 0x1B8A2FAA, 0x38160BAA, 0x041804AA, 0x355D8EAA, 0x2E3F5BAA, 0x561A28AA, 0x4E0E27AA,
    0x706C67AA, 0x3B3E42AA, 0x2E2D33AA, 0x7B7E7DAA, 0x4A4442AA, 0x28344EAA
};

static MySQL: g_SQL;

public OnFilterScriptInit()
{
    g_SQL = mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DATABASE);

    if (!mysql_errno(g_SQL)) print("  [TUNE SYSTEM]: MySQL connection: successful.");
    else SetTimer("UnloadFilterScript", UNLOADFS_DELAY, false);
    return 1;
}

public OnFilterScriptExit()
{
    mysql_close(g_SQL);
    return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch (dialogid)
    {
        case DIALOG_UNUSED: return 1;
        case DIALOG_TUNE:
        {
            if (response)
            {
                if (GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessage(playerid, 0xFF0000FF, "Error: You need to be driver to tune a vehicle.");

                new modelid = GetVehicleModel(GetPlayerVehicleID(playerid));

                switch (modelid)
                {
                    case 534 .. 536, 558 .. 562, 565, 567, 575, 576:
                    {
                        if (!strcmp(inputtext, "Wheels") || !strcmp(inputtext, "Hydraulics"))
                        {
                            new Query[99];
				            
                            mysql_format(g_SQL, Query, sizeof Query, "SELECT componentid,type FROM vehicle_components WHERE part='%e' ORDER BY type", inputtext);
                            mysql_tquery(g_SQL, Query, "OnTuneLoad", "ii", playerid, 2);
                        }
                        else
                        {
                            new Query[113];
				            
                            mysql_format(g_SQL, Query, sizeof Query, "SELECT componentid,type FROM vehicle_components WHERE cars=%i AND part='%e' ORDER BY type", modelid, inputtext);
                            mysql_tquery(g_SQL, Query, "OnTuneLoad", "ii", playerid, 2);
                        }
                    }
                    default:
                    {
                        new Query[101];
				        
                        mysql_format(g_SQL, Query, sizeof Query, "SELECT componentid,type FROM vehicle_components WHERE cars<=0 AND part='%e' ORDER BY type", inputtext);
                        mysql_tquery(g_SQL, Query, "OnTuneLoad", "ii", playerid, 2);
                    }
                }
            }
        }
        case DIALOG_TUNE_2:
        {
            if (!response) return cmd_tune(playerid, "");
            if (GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessage(playerid, 0xFF0000FF, "Error: You need to be driver to tune a vehicle.");

            new vehicleid = GetPlayerVehicleID(playerid), componentid;
            
            if (!sscanf(inputtext, "i", componentid)) AddVehicleComponent(vehicleid, componentid);
            else return RemoveVehicleComponent(vehicleid, 1087);
			
            // sideskirts and vents that have left and right side should be applied twice
            switch (componentid)
            {
                case 1007, 1027, 1030, 1039, 1040, 1051, 1052, 1062, 1063, 1071, 1072, 1094, 1099, 1101, 1102, 1107, 1120, 1121, 1124, 1137, 1142 .. 1145: AddVehicleComponent(vehicleid, componentid);
            }
        }
        case DIALOG_PAINTJOB:
        {
            if (response)
            {
                if (GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessage(playerid, 0xFF0000FF, "Error: You need to be driver to tune a vehicle.");

                new paintjobid;
			
                if (!sscanf(inputtext, "'Paintjob ID:'i", paintjobid)) ChangeVehiclePaintjob(GetPlayerVehicleID(playerid), paintjobid);
                else ChangeVehiclePaintjob(GetPlayerVehicleID(playerid), 3);
            }
        }
        default: return 0;
    }
    return 1;
}

//-----------------------------------------------------

forward OnTuneLoad(playerid, idx);
public OnTuneLoad(playerid, idx)
{
    switch (idx)
    {
        case 0:
        {
            new dialog_info[83], part_name[15];

            for (new i, j = cache_num_rows(); i != j; i++)
            {
                cache_get_value(i, 0, part_name);

                strcat(dialog_info, part_name);
                strcat(dialog_info, "\n");
            }
			
            ShowPlayerDialog(playerid, DIALOG_TUNE, DIALOG_STYLE_LIST, "Available Parts", dialog_info, "Select", "Cancel");
        }
        case 1:
        {
            if (cache_num_rows())
            {
                new dialog_info[83], part_name[14], num_fields;
			    
                cache_get_field_count(num_fields);
			    
                for (new i; i != num_fields; i++)
                {
                    cache_get_value(0, i, part_name);

                    if (!isnull(part_name))
                    {
                        strcat(dialog_info, part_name);
                        strcat(dialog_info, "\n");
                    }
                }
				
                ShowPlayerDialog(playerid, DIALOG_TUNE, DIALOG_STYLE_LIST, "Available Parts", dialog_info, "Select", "Cancel");
            }
            else SendClientMessage(playerid, 0xFF0000FF, "Error: You cannot tune this vehicle.");
        }
        case 2:
        {
            static dialog_info[716];
            new componentid, type[22];

            dialog_info = "{FF0000}Component ID\t{FF8000}Type\n";
	        
            for (new i, j = cache_num_rows(); i != j; i++)
            {
                cache_get_value_int(i, 0, componentid);
                cache_get_value(i, 1, type);
	            
                format(dialog_info, sizeof dialog_info, "%s%i\t%s\n", dialog_info, componentid, type);
            }
            
            if (componentid == 1087) strcat(dialog_info, " ----\tRemove Hydraulics");
	        
            ShowPlayerDialog(playerid, DIALOG_TUNE_2, DIALOG_STYLE_TABLIST_HEADERS, "Available Components", dialog_info, "Install", "Back");
        }
    }
}

forward UnloadFilterScript();
public UnloadFilterScript()
{
    print("  [TUNE SYSTEM]: MySQL connection: failed.");
    SendRconCommand("unloadfs tune_system");
}

//-----------------------------------------------------

CMD:paintjob(playerid, params[])
{
    if (GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessage(playerid, 0xFF0000FF, "Error: You need to be driver to use this command.");

    new modelid = GetVehicleModel(GetPlayerVehicleID(playerid));

    switch (modelid)
    {
        case 483: ShowPlayerDialog(playerid, DIALOG_PAINTJOB, DIALOG_STYLE_LIST, "Available Paintjobs", "Paintjob ID: 0\nRemove Paintjob", "Select", "Cancel");
        case 575: ShowPlayerDialog(playerid, DIALOG_PAINTJOB, DIALOG_STYLE_LIST, "Available Paintjobs", "Paintjob ID: 0\nPaintjob ID: 1\nRemove Paintjob", "Select", "Cancel");
        case 534 .. 536, 558 .. 562, 565, 567, 576: ShowPlayerDialog(playerid, DIALOG_PAINTJOB, DIALOG_STYLE_LIST, "Available Paintjobs", "Paintjob ID: 0\nPaintjob ID: 1\nPaintjob ID: 2\nRemove Paintjob", "Select", "Cancel");
        default: SendClientMessage(playerid, 0xFF0000FF, "Error: This vehicle does not support any paintjob.");
    }
    return 1;
}

CMD:tune(playerid, params[])
{
    if (GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessage(playerid, 0xFF0000FF, "Error: You need to be driver to use this command.");
	
    new modelid = GetVehicleModel(GetPlayerVehicleID(playerid));
	
    switch (modelid)
    {
        case 534 .. 536, 558 .. 562, 565, 567, 575, 576:
        {
            new Query[76];
            mysql_format(g_SQL, Query, sizeof Query, "SELECT part FROM vehicle_components WHERE cars=%i OR cars=-1 GROUP BY part", modelid);
            mysql_tquery(g_SQL, Query, "OnTuneLoad", "ii", playerid, 0);
        }
        default:
        {
            static Query[354];
	        
            mysql_format(g_SQL, Query, sizeof Query,
            "SELECT " \
            "IF(parts & 1 <> 0,'Exhausts','')," \
            "IF(parts & 2 <> 0,'Hood','')," \
            "IF(parts & 4 <> 0,'Hydraulics','')," \
            "IF(parts & 8 <> 0,'Lights','')," \
            "IF(parts & 16 <> 0,'Roof','')," \
            "IF(parts & 32 <> 0,'Side Skirts','')," \
            "IF(parts & 64 <> 0,'Spoilers','')," \
            "IF(parts & 128 <> 0,'Vents','')," \
            "IF(parts & 256 <> 0,'Wheels','') " \
            "FROM vehicle_model_parts WHERE modelid=%i", modelid);
            mysql_tquery(g_SQL, Query, "OnTuneLoad", "ii", playerid, 1);
        }
    }
    return 1;
}


CMD:vcolor(playerid, params[])
{
    if (GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessage(playerid, 0xFF0000FF, "Error: You need to be drive to use this command.");

    new color1, color2;

    if (sscanf(params, "ii", color1, color2)) return SendClientMessage(playerid, -1, "Usage: /vcolor <color1> <color2>");
    if (!(0 <= color1 <= 255) || !(0 <= color2 <= 255)) return SendClientMessage(playerid, 0xFF0000FF, "Error: Color ID should be ranging from 0 to 255");

    ChangeVehicleColor(GetPlayerVehicleID(playerid), color1, color2);
    return 1;
}

CMD:vcolorlist(playerid, params[])
{
    static color_list[3072];
    color_list[0] = EOS;

    for (new colorid; colorid != sizeof gVehicleColors; colorid++)
    {
        format(color_list, sizeof color_list, "%s{%06x}%03d%s", color_list, gVehicleColors[colorid] >>> 8, colorid, !((colorid + 1) % 16) ? ("\n") : (" "));
    }

    ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_MSGBOX, "Color List", color_list, "Close", "");
    return 1;
}
