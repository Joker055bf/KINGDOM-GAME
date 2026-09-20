.class public Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;
.super Ljava/lang/Object;
.source "PeerConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializationOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;
    }
.end annotation


# instance fields
.field final applicationContext:Landroid/content/Context;

.field final enableInternalTracer:Z

.field final fieldTrials:Ljava/lang/String;

.field loggable:Lcom/discord/org/webrtc/Loggable;

.field loggableSeverity:Lcom/discord/org/webrtc/Logging$Severity;

.field final nativeLibraryLoader:Lcom/discord/org/webrtc/NativeLibraryLoader;

.field final nativeLibraryName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/discord/org/webrtc/NativeLibraryLoader;Ljava/lang/String;Lcom/discord/org/webrtc/Loggable;Lcom/discord/org/webrtc/Logging$Severity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->applicationContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->fieldTrials:Ljava/lang/String;

    .line 77
    iput-boolean p3, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->enableInternalTracer:Z

    .line 78
    iput-object p4, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->nativeLibraryLoader:Lcom/discord/org/webrtc/NativeLibraryLoader;

    .line 79
    iput-object p5, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->nativeLibraryName:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->loggable:Lcom/discord/org/webrtc/Loggable;

    .line 81
    iput-object p7, p0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;->loggableSeverity:Lcom/discord/org/webrtc/Logging$Severity;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/discord/org/webrtc/NativeLibraryLoader;Ljava/lang/String;Lcom/discord/org/webrtc/Loggable;Lcom/discord/org/webrtc/Logging$Severity;Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/discord/org/webrtc/NativeLibraryLoader;Ljava/lang/String;Lcom/discord/org/webrtc/Loggable;Lcom/discord/org/webrtc/Logging$Severity;)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;
    .locals 1

    .line 85
    new-instance v0, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/PeerConnectionFactory$InitializationOptions$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
