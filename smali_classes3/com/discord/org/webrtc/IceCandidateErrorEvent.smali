.class public final Lcom/discord/org/webrtc/IceCandidateErrorEvent;
.super Ljava/lang/Object;
.source "IceCandidateErrorEvent.java"


# instance fields
.field public final address:Ljava/lang/String;

.field public final errorCode:I

.field public final errorText:Ljava/lang/String;

.field public final port:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/discord/org/webrtc/IceCandidateErrorEvent;->address:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/discord/org/webrtc/IceCandidateErrorEvent;->port:I

    .line 39
    iput-object p3, p0, Lcom/discord/org/webrtc/IceCandidateErrorEvent;->url:Ljava/lang/String;

    .line 40
    iput p4, p0, Lcom/discord/org/webrtc/IceCandidateErrorEvent;->errorCode:I

    .line 41
    iput-object p5, p0, Lcom/discord/org/webrtc/IceCandidateErrorEvent;->errorText:Ljava/lang/String;

    return-void
.end method
