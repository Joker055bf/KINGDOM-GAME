.class public final enum Lcom/discord/org/webrtc/DataChannel$State;
.super Ljava/lang/Enum;
.source "DataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/DataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/DataChannel$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/DataChannel$State;

.field public static final enum CLOSED:Lcom/discord/org/webrtc/DataChannel$State;

.field public static final enum CLOSING:Lcom/discord/org/webrtc/DataChannel$State;

.field public static final enum CONNECTING:Lcom/discord/org/webrtc/DataChannel$State;

.field public static final enum OPEN:Lcom/discord/org/webrtc/DataChannel$State;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/DataChannel$State;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/discord/org/webrtc/DataChannel$State;

    const/4 v1, 0x0

    .line 93
    sget-object v2, Lcom/discord/org/webrtc/DataChannel$State;->CONNECTING:Lcom/discord/org/webrtc/DataChannel$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/DataChannel$State;->OPEN:Lcom/discord/org/webrtc/DataChannel$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/DataChannel$State;->CLOSING:Lcom/discord/org/webrtc/DataChannel$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/discord/org/webrtc/DataChannel$State;->CLOSED:Lcom/discord/org/webrtc/DataChannel$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 94
    new-instance v0, Lcom/discord/org/webrtc/DataChannel$State;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/DataChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/DataChannel$State;->CONNECTING:Lcom/discord/org/webrtc/DataChannel$State;

    .line 95
    new-instance v0, Lcom/discord/org/webrtc/DataChannel$State;

    const-string v1, "OPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/DataChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/DataChannel$State;->OPEN:Lcom/discord/org/webrtc/DataChannel$State;

    .line 96
    new-instance v0, Lcom/discord/org/webrtc/DataChannel$State;

    const-string v1, "CLOSING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/DataChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/DataChannel$State;->CLOSING:Lcom/discord/org/webrtc/DataChannel$State;

    .line 97
    new-instance v0, Lcom/discord/org/webrtc/DataChannel$State;

    const-string v1, "CLOSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/DataChannel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/DataChannel$State;->CLOSED:Lcom/discord/org/webrtc/DataChannel$State;

    .line 93
    invoke-static {}, Lcom/discord/org/webrtc/DataChannel$State;->$values()[Lcom/discord/org/webrtc/DataChannel$State;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/DataChannel$State;->$VALUES:[Lcom/discord/org/webrtc/DataChannel$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromNativeIndex(I)Lcom/discord/org/webrtc/DataChannel$State;
    .locals 1

    .line 101
    invoke-static {}, Lcom/discord/org/webrtc/DataChannel$State;->values()[Lcom/discord/org/webrtc/DataChannel$State;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/DataChannel$State;
    .locals 1

    .line 93
    const-class v0, Lcom/discord/org/webrtc/DataChannel$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/DataChannel$State;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/DataChannel$State;
    .locals 1

    .line 93
    sget-object v0, Lcom/discord/org/webrtc/DataChannel$State;->$VALUES:[Lcom/discord/org/webrtc/DataChannel$State;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/DataChannel$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/DataChannel$State;

    return-object v0
.end method
