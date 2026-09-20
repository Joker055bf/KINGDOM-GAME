.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"

# interfaces
.implements Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider$GetTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

.field final synthetic val$thisGetTokenAttempt:J


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;J)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iput-wide p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->val$thisGetTokenAttempt:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4

    .line 744
    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->val$thisGetTokenAttempt:J

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object v2, v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-static {v0, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1102(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 746
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error fetching token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    goto :goto_0

    .line 749
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    const-string v0, "Ignoring getToken error, because this was not the latest attempt."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    .line 720
    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->val$thisGetTokenAttempt:J

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object v2, v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v2, :cond_0

    .line 724
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    const-string v2, "Successfully fetched token, opening connection"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object v0, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->openNetworkConnection(Ljava/lang/String;)V

    goto :goto_1

    .line 727
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    .line 728
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object v2, v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    .line 730
    invoke-static {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "Expected connection state disconnected, but was %s"

    .line 727
    invoke-static {p1, v2, v0}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 731
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    const-string v0, "Not opening connection after token refresh, because connection was set to disconnected"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 736
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3$1;->this$1:Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    iget-object p1, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    const-string v0, "Ignoring getToken result, because this was not the latest attempt."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
