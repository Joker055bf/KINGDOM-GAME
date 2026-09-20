.class public Lcom/discord/org/webrtc/EglHelper;
.super Ljava/lang/Object;
.source "EglHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/discord/org/webrtc/EglBase;
    .locals 1

    .line 15
    invoke-static {}, Lcom/discord/org/webrtc/EglBase;->create()Lcom/discord/org/webrtc/EglBase;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/discord/org/webrtc/EglBase$Context;[I)Lcom/discord/org/webrtc/EglBase;
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/discord/org/webrtc/EglBase;->create(Lcom/discord/org/webrtc/EglBase$Context;[I)Lcom/discord/org/webrtc/EglBase;

    move-result-object p0

    return-object p0
.end method
