.class public Lcom/t4f/chat/ChatManager;
.super Ljava/lang/Object;
.source "ChatManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "chat.ChatManager"

.field private static volatile instance:Lcom/t4f/chat/ChatManager;


# instance fields
.field private mBindIntent:Landroid/content/Intent;

.field private mChatServiceConnection:Landroid/content/ServiceConnection;

.field private mChatWebSocketListener:Lcom/t4f/chat/IChatWebSocketListener;

.field private mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

.field private mIsBound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketListener:Lcom/t4f/chat/IChatWebSocketListener;

    .line 20
    iput-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/t4f/chat/ChatManager;->mIsBound:Z

    .line 22
    new-instance v0, Lcom/t4f/chat/ChatManager$1;

    invoke-direct {v0, p0}, Lcom/t4f/chat/ChatManager$1;-><init>(Lcom/t4f/chat/ChatManager;)V

    iput-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/t4f/chat/ChatManager;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/t4f/chat/ChatManager;->mIsBound:Z

    return p1
.end method

.method static synthetic access$100(Lcom/t4f/chat/ChatManager;)Lcom/t4f/chat/ChatWebSocketService;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/t4f/chat/ChatManager;Lcom/t4f/chat/ChatWebSocketService;)Lcom/t4f/chat/ChatWebSocketService;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    return-object p1
.end method

.method public static getInstance()Lcom/t4f/chat/ChatManager;
    .locals 2

    .line 50
    sget-object v0, Lcom/t4f/chat/ChatManager;->instance:Lcom/t4f/chat/ChatManager;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/t4f/chat/ChatManager;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/t4f/chat/ChatManager;->instance:Lcom/t4f/chat/ChatManager;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/t4f/chat/ChatManager;

    invoke-direct {v1}, Lcom/t4f/chat/ChatManager;-><init>()V

    sput-object v1, Lcom/t4f/chat/ChatManager;->instance:Lcom/t4f/chat/ChatManager;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/t4f/chat/ChatManager;->instance:Lcom/t4f/chat/ChatManager;

    return-object v0
.end method

.method private getPlainMessage()Ljava/lang/String;
    .locals 3

    const-string v0, "=>GetPlainMessage"

    const-string v1, "chat.ChatManager"

    .line 237
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u0000"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    sget-object v2, Lcom/t4f/chat/ConstantUtil;->sUserName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    sget-object v2, Lcom/t4f/chat/ConstantUtil;->sPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<=GetPlainMessage"

    .line 244
    invoke-static {v1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bingChatWebSocketService(Landroid/app/Activity;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/t4f/chat/ChatManager;->mIsBound:Z

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/t4f/chat/ChatWebSocketService;->login()V

    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/t4f/chat/ChatManager;->mIsBound:Z

    .line 130
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/t4f/chat/ChatWebSocketService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/t4f/chat/ChatManager;->mBindIntent:Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/t4f/chat/ChatManager;->mChatServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public connectHandshakeOne()V
    .locals 3

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    sget-object v1, Lcom/t4f/chat/ConstantUtil;->sHandshakeOneProtocol:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4f/chat/ChatWebSocketService;->sendMsg([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=>connectHandshakeOne e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat.ChatManager"

    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {v0}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public connectHandshakeThree()V
    .locals 3

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    sget-object v1, Lcom/t4f/chat/ConstantUtil;->sHandshakeThreeProtocol:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4f/chat/ChatWebSocketService;->sendMsg([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=>connectHandshakeThree e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat.ChatManager"

    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {v0}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public connectHandshakeTwo()V
    .locals 3

    .line 211
    invoke-direct {p0}, Lcom/t4f/chat/ChatManager;->getPlainMessage()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 217
    :cond_0
    sget-object v1, Lcom/t4f/chat/ConstantUtil;->sHandshakeTwoProtocol:Ljava/lang/String;

    sget-object v2, Lcom/t4f/chat/ConstantUtil;->sPlainMessageKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "UTF-8"

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/t4f/chat/ChatWebSocketService;->sendMsg([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=>connectHandshakeTwo e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat.ChatManager"

    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {v0}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {v0}, Lcom/t4f/chat/ChatWebSocketService;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=>disconnect e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat.ChatManager"

    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v0}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getChatWebSocketListener()Lcom/t4f/chat/IChatWebSocketListener;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketListener:Lcom/t4f/chat/IChatWebSocketListener;

    return-object v0
.end method

.method public isHandshakeOneSuccess(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "mechanisms xmlns=\'urn:ietf:params:xml:ns:xmpp-sasl\'"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "c xmlns=\'http://jabber.org/protocol/caps\' hash=\'sha-1\'"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "register xmlns=\'http://jabber.org/features/iq-register\'"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isHandshakeThreeSuccess(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "bind xmlns=\'urn:ietf:params:xml:ns:xmpp-bind\'"

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "session xmlns=\'urn:ietf:params:xml:ns:xmpp-session\'"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sm xmlns=\'urn:xmpp:sm:2\'"

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sm xmlns=\'urn:xmpp:sm:3\'"

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "c xmlns=\'http://jabber.org/protocol/caps\' hash=\'sha-1\'"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "register xmlns=\'http://jabber.org/features/iq-register\'"

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isHandshakeTwoSuccess(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "success xmlns=\'urn:ietf:params:xml:ns:xmpp-sasl\'"

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isLoginFirstStepSuccess(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "iq id="

    .line 369
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bind xmlns=\"urn:ietf:params:xml:ns:xmpp-bind"

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<jid>"

    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isOnline()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Lcom/t4f/chat/ChatWebSocketService;->getChatClient()Lcom/t4f/chat/ChatWebSocketClient;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    invoke-virtual {v0}, Lcom/t4f/chat/ChatWebSocketService;->getChatClient()Lcom/t4f/chat/ChatWebSocketClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4f/chat/ChatWebSocketClient;->isOpen()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    sput-object p1, Lcom/t4f/chat/ConstantUtil;->sActivity:Landroid/app/Activity;

    .line 96
    sput-object p2, Lcom/t4f/chat/ConstantUtil;->sClientId:Ljava/lang/String;

    .line 97
    sput-object p3, Lcom/t4f/chat/ConstantUtil;->sUserID:Ljava/lang/String;

    const-string p2, "@"

    .line 98
    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 p7, 0x0

    invoke-virtual {p3, p7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/t4f/chat/ConstantUtil;->sUserName:Ljava/lang/String;

    .line 99
    sput-object p4, Lcom/t4f/chat/ConstantUtil;->sPassword:Ljava/lang/String;

    .line 100
    sput-object p5, Lcom/t4f/chat/ConstantUtil;->sServerUrl:Ljava/lang/String;

    .line 101
    sput p6, Lcom/t4f/chat/ConstantUtil;->sServerPort:I

    .line 102
    sput-boolean p8, Lcom/t4f/chat/ConstantUtil;->isEnableJson:Z

    .line 104
    invoke-virtual {p0, p1}, Lcom/t4f/chat/ChatManager;->bingChatWebSocketService(Landroid/app/Activity;)V

    return-void
.end method

.method public loginBind()V
    .locals 3

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    sget-object v1, Lcom/t4f/chat/ConstantUtil;->sLoginBindProtocol:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4f/chat/ChatWebSocketService;->sendMsg([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=>loginBind e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat.ChatManager"

    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {v0}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public loginBindSessionRoster(I)V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/t4f/chat/ChatManager;->loginBind()V

    .line 304
    invoke-virtual {p0}, Lcom/t4f/chat/ChatManager;->loginSession()V

    .line 305
    invoke-virtual {p0}, Lcom/t4f/chat/ChatManager;->loginRoster()V

    return-void
.end method

.method public loginRoster()V
    .locals 3

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    sget-object v1, Lcom/t4f/chat/ConstantUtil;->sLoginRosterProtocol:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4f/chat/ChatWebSocketService;->sendMsg([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=>loginRoster e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat.ChatManager"

    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {v0}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public loginSession()V
    .locals 3

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    sget-object v1, Lcom/t4f/chat/ConstantUtil;->sLoginSessionProtocol:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4f/chat/ChatWebSocketService;->sendMsg([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=>loginSession e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat.ChatManager"

    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {v0}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/t4f/chat/ChatManager;->mIsBound:Z

    if-eqz v0, :cond_1

    const-string v0, "chat.ChatManager"

    const-string v1, "=>onDestroy...unbindService"

    .line 166
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Lcom/t4f/chat/ChatManager;->mIsBound:Z

    :cond_1
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 2

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 402
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketService:Lcom/t4f/chat/ChatWebSocketService;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "UTF-8"

    .line 406
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/t4f/chat/ChatWebSocketService;->sendMsg([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=>sendMessage e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat.ChatManager"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {p1}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setChatWebSocketListener(Lcom/t4f/chat/IChatWebSocketListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lcom/t4f/chat/ChatManager;->mChatWebSocketListener:Lcom/t4f/chat/IChatWebSocketListener;

    :cond_0
    return-void
.end method
