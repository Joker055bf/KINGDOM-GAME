.class Lcom/discord/socialsdk/DiscordAudioManagerLegacy$1;
.super Landroid/content/BroadcastReceiver;
.source "DiscordAudioManagerLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/socialsdk/DiscordAudioManagerLegacy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/socialsdk/DiscordAudioManagerLegacy;


# direct methods
.method constructor <init>(Lcom/discord/socialsdk/DiscordAudioManagerLegacy;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy$1;->this$0:Lcom/discord/socialsdk/DiscordAudioManagerLegacy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v0, -0x1

    .line 36
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    .line 38
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const-string p1, "DiscordSocialSdk"

    const-string p2, "SCO connection failed, updating audio routing"

    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy$1;->this$0:Lcom/discord/socialsdk/DiscordAudioManagerLegacy;

    invoke-virtual {p1}, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->updateActiveAudioDevice()V

    :cond_0
    return-void
.end method
