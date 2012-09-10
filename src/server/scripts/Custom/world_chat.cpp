#include "ScriptPCH.h" 
#include "Chat.h" 
 
class cs_world_chat : public CommandScript 
{ 
    public: 
  cs_world_chat() : CommandScript("cs_world_chat"){} 
 
    ChatCommand * GetCommands() const 
    { 
  static ChatCommand WorldChatCommandTable[] =  
  { 
   {"chat",    SEC_PLAYER,  true,  &HandleWorldChatCommand,    "", NULL}, 
   {NULL,  0,    false,  NULL,      "", NULL} 
  }; 
 
  return WorldChatCommandTable; 
    } 
 
    static bool HandleWorldChatCommand(ChatHandler * handler, const char * args) 
    { 
  if (!handler->GetSession()->GetPlayer()->CanSpeak()) 
   return false; 
  std::string temp = args; 
 
  if (!args || temp.find_first_not_of(' ') == std::string::npos) 
   return false; 
 
  std::string msg = ""; 
  Player * player = handler->GetSession()->GetPlayer(); 
 
  switch(player->GetSession()->GetSecurity()) 
  { 
   // Player 
   case SEC_PLAYER: 
    if (player->GetTeam() == ALLIANCE) 
    { 
     msg += "|cff0000ff[������] |cffffffff["; 
     msg += player->GetName(); 
     msg += "] |cfffaeb00"; 
    } 
 
    if (player->GetTeam() == HORDE) 
    { 
     msg += "|cffff0000[����] |cffffffff["; 
     msg += player->GetName(); 
     msg += "] |cfffaeb00"; 
    } 
    break; 
   // Moderator/trial  
   case SEC_MODERATOR: 
    msg += "|cffff8a00[���������] |cffffffff["; 
    msg += player->GetName(); 
    msg += "] |cfffaeb00"; 
    break; 
   // GM 
   case SEC_GAMEMASTER: 
    msg += "|cff00ffff[��] |cffffffff["; 
    msg += player->GetName(); 
    msg += "] |cfffaeb00"; 
    break; 
   // Admin 
   case SEC_ADMINISTRATOR: 
    msg += "|cfffa9900[�����] |cffffffff["; 
    msg += player->GetName(); 
    msg += "] |cfffaeb00"; 
    break; 
 
  } 
    
  msg += args; 
  sWorld->SendServerMessage(SERVER_MSG_STRING, msg.c_str(), 0);  
 
  return true; 
    } 
}; 
 
void AddSC_cs_world_chat() 
{ 
    new cs_world_chat(); 
}