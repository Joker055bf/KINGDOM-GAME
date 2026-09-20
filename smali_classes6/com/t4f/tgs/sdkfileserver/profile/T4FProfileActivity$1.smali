.class Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$1;
.super Ljava/lang/Object;
.source "T4FProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;


# direct methods
.method constructor <init>(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$1;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$1;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {v0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$000(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4f/tgs/sdkfileserver/profile/ProfileTailorConfig;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rectangle"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$1;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {v0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$100(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    goto :goto_0

    :cond_0
    const-string v1, "circle"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$1;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {v0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$200(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity$1;->this$0:Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;

    invoke-static {v0}, Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;->access$200(Lcom/t4f/tgs/sdkfileserver/profile/T4FProfileActivity;)V

    :goto_0
    return-void
.end method
