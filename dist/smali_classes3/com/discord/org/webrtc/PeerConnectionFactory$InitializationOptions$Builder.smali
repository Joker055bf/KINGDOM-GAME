.class public Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;
.super Ljava/lang/Object;
.source "PeerConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private enableInternalTracer:Z

.field private fieldTrials:Ljava/lang/String;

.field private loggable:Lcom/discord/org/webrtc/Loggable;

.field private loggableSeverity:Lcom/discord/org/webrtc/Logging$Severity;

.field private nativeLibraryLoader:Lcom/discord/org/webrtc/NativeLibraryLoader;

.field private nativeLibraryName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->fieldTrials:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/discord/org/webrtc/NativeLibrary$DefaultLoader;

    invoke-direct {v0}, Lcom/discord/org/webrtc/NativeLibrary$DefaultLoader;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->nativeLibraryLoader:Lcom/discord/org/webrtc/NativeLibraryLoader;

    const-string v0, "jingle_peerconnection_so"

    .line 93
    iput-object v0, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->nativeLibraryName:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createInitializationOptions()Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;
    .locals 10

    .line 128
    new-instance v9, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;

    iget-object v1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->fieldTrials:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->enableInternalTracer:Z

    iget-object v4, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->nativeLibraryLoader:Lcom/discord/org/webrtc/NativeLibraryLoader;

    iget-object v5, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->nativeLibraryName:Ljava/lang/String;

    iget-object v6, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->loggable:Lcom/discord/org/webrtc/Loggable;

    iget-object v7, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->loggableSeverity:Lcom/discord/org/webrtc/Logging$Severity;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/discord/org/webrtc/NativeLibraryLoader;Ljava/lang/String;Lcom/discord/org/webrtc/Loggable;Lcom/discord/org/webrtc/Logging$Severity;Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions-IA;)V

    return-object v9
.end method

.method public setEnableInternalTracer(Z)Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->enableInternalTracer:Z

    return-object p0
.end method

.method public setFieldTrials(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->fieldTrials:Ljava/lang/String;

    return-object p0
.end method

.method public setInjectableLogger(Lcom/discord/org/webrtc/Loggable;Lcom/discord/org/webrtc/Logging$Severity;)Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->loggable:Lcom/discord/org/webrtc/Loggable;

    .line 123
    iput-object p2, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->loggableSeverity:Lcom/discord/org/webrtc/Logging$Severity;

    return-object p0
.end method

.method public setNativeLibraryLoader(Lcom/discord/org/webrtc/NativeLibraryLoader;)Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->nativeLibraryLoader:Lcom/discord/org/webrtc/NativeLibraryLoader;

    return-object p0
.end method

.method public setNativeLibraryName(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;->nativeLibraryName:Ljava/lang/String;

    return-object p0
.end method
