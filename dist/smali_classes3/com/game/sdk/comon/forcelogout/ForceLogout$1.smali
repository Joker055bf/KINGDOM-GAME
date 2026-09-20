.class Lcom/game/sdk/comon/forcelogout/ForceLogout$1;
.super Ljava/lang/Object;
.source "ForceLogout.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/forcelogout/ForceLogout;->initFRB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/forcelogout/ForceLogout;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/forcelogout/ForceLogout;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout$1;->this$0:Lcom/game/sdk/comon/forcelogout/ForceLogout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 4

    const-string v0, "error message"

    const-string v1, "error code"

    .line 70
    :try_start_0
    invoke-static {}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 3

    .line 59
    const-class v0, Lcom/game/sdk/comon/forcelogout/GameObj;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/game/sdk/comon/forcelogout/GameObj;

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout$1;->this$0:Lcom/game/sdk/comon/forcelogout/ForceLogout;

    invoke-static {v0, p1}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->access$002(Lcom/game/sdk/comon/forcelogout/ForceLogout;Lcom/game/sdk/comon/forcelogout/GameObj;)Lcom/game/sdk/comon/forcelogout/GameObj;

    .line 62
    invoke-static {}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isForce: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/game/sdk/comon/forcelogout/GameObj;->getIsForce()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcom/game/sdk/comon/forcelogout/ForceLogout$1;->this$0:Lcom/game/sdk/comon/forcelogout/ForceLogout;

    invoke-virtual {p1}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->forceOut()V

    :cond_0
    return-void
.end method
