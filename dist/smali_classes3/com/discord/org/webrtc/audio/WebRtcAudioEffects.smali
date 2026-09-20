.class Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;
.super Ljava/lang/Object;
.source "WebRtcAudioEffects.java"


# static fields
.field private static final AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

.field private static final AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioEffectsExternal"

.field private static cachedEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;


# instance fields
.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private ns:Landroid/media/audiofx/NoiseSuppressor;

.field private shouldEnableAec:Z

.field private shouldEnableNs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "bb392ec0-8d4d-11e0-a896-0002a5d5c51b"

    .line 34
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    const-string v0, "c06c8400-8e06-11e0-9cb6-0002a5d5c51b"

    .line 36
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ctor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffectsExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 207
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private effectTypeIsVoIP(Ljava/util/UUID;)Z
    .locals 1

    .line 200
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    .line 201
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static getAvailableEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    .line 214
    sget-object v0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->cachedEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    if-eqz v0, :cond_0

    return-object v0

    .line 221
    :cond_0
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->cachedEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static isAcousticEchoCancelerSupported()Z
    .locals 2

    .line 57
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    sget-object v1, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isEffectTypeAvailable(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private static isEffectTypeAvailable(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 6

    .line 229
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->getAvailableEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 233
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 234
    iget-object v5, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v5, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 235
    iget-object p0, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isNoiseSuppressorSupported()Z
    .locals 2

    .line 62
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    sget-object v1, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isEffectTypeAvailable(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public enable(I)V
    .locals 12

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enable(audioSession="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffectsExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->assertTrue(Z)V

    .line 123
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-static {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->assertTrue(Z)V

    .line 140
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    const-string v4, ", is now: "

    const-string v5, ", enable: "

    const-string v6, "enabled"

    const-string v7, "disabled"

    if-eqz v0, :cond_7

    .line 143
    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_6

    .line 145
    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v0

    .line 146
    iget-boolean v8, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->shouldEnableAec:Z

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v3

    .line 147
    :goto_2
    iget-object v9, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v9, v8}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "Failed to set the AcousticEchoCanceler state"

    .line 148
    invoke-static {v1, v9}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    move-object v0, v6

    goto :goto_3

    :cond_4
    move-object v0, v7

    .line 152
    :goto_3
    iget-object v9, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v9}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v6

    goto :goto_4

    :cond_5
    move-object v9, v7

    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "AcousticEchoCanceler: was "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string v0, "Failed to create the AcousticEchoCanceler instance"

    .line 154
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_7
    :goto_5
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 161
    invoke-static {p1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz p1, :cond_c

    .line 163
    invoke-virtual {p1}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result p1

    .line 164
    iget-boolean v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->shouldEnableNs:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v2, v3

    .line 165
    :goto_6
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0, v2}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Failed to set the NoiseSuppressor state"

    .line 166
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz p1, :cond_a

    move-object p1, v6

    goto :goto_7

    :cond_a
    move-object p1, v7

    .line 170
    :goto_7
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    move-object v6, v7

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "NoiseSuppressor: was "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    const-string p1, "Failed to create the NoiseSuppressor instance"

    .line 172
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_9
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "WebRtcAudioEffectsExternal"

    const-string v1, "release"

    .line 181
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 184
    iput-object v1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 188
    iput-object v1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    :cond_1
    return-void
.end method

.method public setAEC(Z)Z
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAEC("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffectsExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Platform AEC is not supported"

    .line 76
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-boolean v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->shouldEnableAec:Z

    return v2

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->shouldEnableAec:Z

    if-eq p1, v0, :cond_1

    const-string p1, "Platform AEC state can\'t be modified while recording"

    .line 81
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 84
    :cond_1
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->shouldEnableAec:Z

    const/4 p1, 0x1

    return p1
.end method

.method public setNS(Z)Z
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setNS("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffectsExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Platform NS is not supported"

    .line 95
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput-boolean v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->shouldEnableNs:Z

    return v2

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->shouldEnableNs:Z

    if-eq p1, v0, :cond_1

    const-string p1, "Platform NS state can\'t be modified while recording"

    .line 100
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 103
    :cond_1
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->shouldEnableNs:Z

    const/4 p1, 0x1

    return p1
.end method

.method public toggleNS(Z)Z
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    const/4 v1, 0x0

    const-string v2, "WebRtcAudioEffectsExternal"

    if-nez v0, :cond_0

    const-string p1, "Attempting to enable or disable nonexistent NoiseSuppressor."

    .line 112
    invoke-static {v2, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "toggleNS("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
