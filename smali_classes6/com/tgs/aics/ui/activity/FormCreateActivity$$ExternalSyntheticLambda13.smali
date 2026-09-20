.class public final synthetic Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;[ZLandroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda13;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda13;->f$1:[Z

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda13;->f$2:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda13;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda13;->f$1:[Z

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda13;->f$2:Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->lambda$multipleSelectLogic$22(Landroid/widget/TextView;[ZLandroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
