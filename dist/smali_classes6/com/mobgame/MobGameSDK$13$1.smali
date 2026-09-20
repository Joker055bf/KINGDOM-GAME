.class Lcom/mobgame/MobGameSDK$13$1;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/MobGameSDK$13;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK$13;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$13$1;->this$1:Lcom/mobgame/MobGameSDK$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1098
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1099
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1100
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "android:system_alert_window"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1101
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$13$1;->this$1:Lcom/mobgame/MobGameSDK$13;

    iget-object p1, p1, Lcom/mobgame/MobGameSDK$13;->this$0:Lcom/mobgame/MobGameSDK;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mobgame/MobGameSDK;->access$2102(Lcom/mobgame/MobGameSDK;Z)Z

    :cond_0
    return-void
.end method
