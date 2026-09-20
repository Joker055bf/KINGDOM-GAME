.class Lcom/tgs/aics/ui/activity/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/HomeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$2;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity$2;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->access$302(Lcom/tgs/aics/ui/activity/HomeActivity;I)I

    .line 201
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity$2;->this$0:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->access$400(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
