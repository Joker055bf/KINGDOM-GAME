.class public final Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;
.super Ljava/lang/Object;
.source "RtpTransceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/RtpTransceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RtpTransceiverInit"
.end annotation


# instance fields
.field private final direction:Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;

.field private final sendEncodings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$Encoding;",
            ">;"
        }
    .end annotation
.end field

.field private final streamIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    sget-object v0, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;->SEND_RECV:Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;

    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;-><init>(Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;)V

    return-void
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;)V
    .locals 2

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;-><init>(Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;-><init>(Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$Encoding;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;->direction:Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;->streamIds:Ljava/util/List;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;->sendEncodings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getDirectionNativeIndex()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;->direction:Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverDirection;->getNativeIndex()I

    move-result v0

    return v0
.end method

.method getSendEncodings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$Encoding;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;->sendEncodings:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getStreamIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/discord/org/webrtc/RtpTransceiver$RtpTransceiverInit;->streamIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
