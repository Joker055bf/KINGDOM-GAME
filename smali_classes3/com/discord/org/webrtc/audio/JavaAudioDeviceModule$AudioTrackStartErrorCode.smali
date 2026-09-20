.class public final enum Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;
.super Ljava/lang/Enum;
.source "JavaAudioDeviceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioTrackStartErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

.field public static final enum AUDIO_TRACK_START_EXCEPTION:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

.field public static final enum AUDIO_TRACK_START_STATE_MISMATCH:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    const/4 v1, 0x0

    .line 330
    sget-object v2, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->AUDIO_TRACK_START_EXCEPTION:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->AUDIO_TRACK_START_STATE_MISMATCH:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 331
    new-instance v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    const-string v1, "AUDIO_TRACK_START_EXCEPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->AUDIO_TRACK_START_EXCEPTION:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    .line 332
    new-instance v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    const-string v1, "AUDIO_TRACK_START_STATE_MISMATCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->AUDIO_TRACK_START_STATE_MISMATCH:Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    .line 330
    invoke-static {}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->$values()[Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->$VALUES:[Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 330
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;
    .locals 1

    .line 330
    const-class v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;
    .locals 1

    .line 330
    sget-object v0, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->$VALUES:[Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    return-object v0
.end method
