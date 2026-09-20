.class public Lcom/discord/org/webrtc/RtpParameters;
.super Ljava/lang/Object;
.source "RtpParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/RtpParameters$DegradationPreference;,
        Lcom/discord/org/webrtc/RtpParameters$Rtcp;,
        Lcom/discord/org/webrtc/RtpParameters$HeaderExtension;,
        Lcom/discord/org/webrtc/RtpParameters$Codec;,
        Lcom/discord/org/webrtc/RtpParameters$Encoding;
    }
.end annotation


# instance fields
.field public final codecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$Codec;",
            ">;"
        }
    .end annotation
.end field

.field public degradationPreference:Lcom/discord/org/webrtc/RtpParameters$DegradationPreference;

.field public final encodings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$Encoding;",
            ">;"
        }
    .end annotation
.end field

.field private final headerExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$HeaderExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final rtcp:Lcom/discord/org/webrtc/RtpParameters$Rtcp;

.field public final transactionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/discord/org/webrtc/RtpParameters$DegradationPreference;Lcom/discord/org/webrtc/RtpParameters$Rtcp;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/discord/org/webrtc/RtpParameters$DegradationPreference;",
            "Lcom/discord/org/webrtc/RtpParameters$Rtcp;",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$HeaderExtension;",
            ">;",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$Encoding;",
            ">;",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$Codec;",
            ">;)V"
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/discord/org/webrtc/RtpParameters;->transactionId:Ljava/lang/String;

    .line 304
    iput-object p2, p0, Lcom/discord/org/webrtc/RtpParameters;->degradationPreference:Lcom/discord/org/webrtc/RtpParameters$DegradationPreference;

    .line 305
    iput-object p3, p0, Lcom/discord/org/webrtc/RtpParameters;->rtcp:Lcom/discord/org/webrtc/RtpParameters$Rtcp;

    .line 306
    iput-object p4, p0, Lcom/discord/org/webrtc/RtpParameters;->headerExtensions:Ljava/util/List;

    .line 307
    iput-object p5, p0, Lcom/discord/org/webrtc/RtpParameters;->encodings:Ljava/util/List;

    .line 308
    iput-object p6, p0, Lcom/discord/org/webrtc/RtpParameters;->codecs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getCodecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$Codec;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpParameters;->codecs:Ljava/util/List;

    return-object v0
.end method

.method getDegradationPreference()Lcom/discord/org/webrtc/RtpParameters$DegradationPreference;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpParameters;->degradationPreference:Lcom/discord/org/webrtc/RtpParameters$DegradationPreference;

    return-object v0
.end method

.method getEncodings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$Encoding;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpParameters;->encodings:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/RtpParameters$HeaderExtension;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpParameters;->headerExtensions:Ljava/util/List;

    return-object v0
.end method

.method public getRtcp()Lcom/discord/org/webrtc/RtpParameters$Rtcp;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpParameters;->rtcp:Lcom/discord/org/webrtc/RtpParameters$Rtcp;

    return-object v0
.end method

.method getTransactionId()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpParameters;->transactionId:Ljava/lang/String;

    return-object v0
.end method
