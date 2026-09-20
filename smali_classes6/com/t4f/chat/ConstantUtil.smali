.class public Lcom/t4f/chat/ConstantUtil;
.super Ljava/lang/Object;
.source "ConstantUtil.java"


# static fields
.field public static isEnableJson:Z = false

.field public static sActivity:Landroid/app/Activity; = null

.field public static sClientId:Ljava/lang/String; = ""

.field public static sHandshakeOneProtocol:Ljava/lang/String; = "<stream:stream to=\'chat.pf.tap4fun.com\' xmlns=\'jabber:client\' xmlns:stream=\'http://etherx.jabber.org/streams\' version=\'1.0\'>"

.field public static sHandshakeThreeProtocol:Ljava/lang/String; = null

.field public static sHandshakeTwoProtocol:Ljava/lang/String; = null

.field public static sLoginBindProtocol:Ljava/lang/String; = null

.field public static sLoginRosterProtocol:Ljava/lang/String; = null

.field public static sLoginSessionProtocol:Ljava/lang/String; = null

.field public static sPassword:Ljava/lang/String; = ""

.field public static sPlainMessageKey:Ljava/lang/String; = "TgsNewChatPlainMessage"

.field public static sRoomIdKey:Ljava/lang/String; = null

.field public static sServerPort:I = 0x0

.field public static sServerUrl:Ljava/lang/String; = ""

.field public static sUserID:Ljava/lang/String; = ""

.field public static sUserName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " <auth mechanism=\"PLAIN\" xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/t4f/chat/ConstantUtil;->sPlainMessageKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</auth>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4f/chat/ConstantUtil;->sHandshakeTwoProtocol:Ljava/lang/String;

    const-string v0, "<stream:stream to=\'chat.pf.tap4fun.com\' xmlns=\'jabber:client\' xmlns:stream=\'http://etherx.jabber.org/streams\' version=\'1.0\'>"

    .line 42
    sput-object v0, Lcom/t4f/chat/ConstantUtil;->sHandshakeThreeProtocol:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<iq id=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" type=\"set\" xmlns=\"jabber:client\"><bind xmlns=\"urn:ietf:params:xml:ns:xmpp-bind\"><resource>MatriX</resource></bind></iq>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4f/chat/ConstantUtil;->sLoginBindProtocol:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" type=\"set\" xmlns=\"jabber:client\">\n    <session xmlns=\"urn:ietf:params:xml:ns:xmpp-session\"></session>\n</iq>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4f/chat/ConstantUtil;->sLoginSessionProtocol:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" type=\"get\" xmlns=\"jabber:client\">\n    <query xmlns=\"jabber:iq:roster\"></query>\n</iq>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4f/chat/ConstantUtil;->sLoginRosterProtocol:Ljava/lang/String;

    const-string v0, "TgsNewChatRoomId"

    .line 58
    sput-object v0, Lcom/t4f/chat/ConstantUtil;->sRoomIdKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
