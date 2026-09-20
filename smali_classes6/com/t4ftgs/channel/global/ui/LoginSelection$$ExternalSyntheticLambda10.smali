.class public final synthetic Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Button;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda10;->f$0:Landroid/widget/Button;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda10;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda10;->f$0:Landroid/widget/Button;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda10;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->lambda$resetGetCodeButtonStyle$10(Landroid/widget/Button;Landroid/app/Activity;)V

    return-void
.end method
