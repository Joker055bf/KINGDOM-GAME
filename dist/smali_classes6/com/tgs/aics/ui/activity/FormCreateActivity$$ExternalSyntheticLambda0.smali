.class public final synthetic Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->lambda$singleSelectLogic$20(Landroid/widget/TextView;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
