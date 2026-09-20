.class public Lcom/discord/org/webrtc/RtpParameters$HeaderExtension;
.super Ljava/lang/Object;
.source "RtpParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/RtpParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderExtension"
.end annotation


# instance fields
.field private final encrypted:Z

.field private final id:I

.field private final uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/discord/org/webrtc/RtpParameters$HeaderExtension;->uri:Ljava/lang/String;

    .line 264
    iput p2, p0, Lcom/discord/org/webrtc/RtpParameters$HeaderExtension;->id:I

    .line 265
    iput-boolean p3, p0, Lcom/discord/org/webrtc/RtpParameters$HeaderExtension;->encrypted:Z

    return-void
.end method


# virtual methods
.method public getEncrypted()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/discord/org/webrtc/RtpParameters$HeaderExtension;->encrypted:Z

    return v0
.end method

.method public getId()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/discord/org/webrtc/RtpParameters$HeaderExtension;->id:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpParameters$HeaderExtension;->uri:Ljava/lang/String;

    return-object v0
.end method
