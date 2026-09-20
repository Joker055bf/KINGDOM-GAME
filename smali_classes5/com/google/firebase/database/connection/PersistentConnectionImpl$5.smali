.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthHelper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final synthetic val$restoreStateAfterComplete:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V
    .locals 0

    .line 965
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-boolean p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->val$restoreStateAfterComplete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 968
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-static {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1102(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const-string v0, "s"

    .line 970
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    .line 971
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 972
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1, v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1702(Lcom/google/firebase/database/connection/PersistentConnectionImpl;I)I

    .line 973
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onAuthStatus(Z)V

    .line 974
    iget-boolean p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->val$restoreStateAfterComplete:Z

    if-eqz p1, :cond_1

    .line 975
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1800(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    goto/16 :goto_0

    .line 978
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1902(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 979
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v1, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2002(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)Z

    .line 980
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onAuthStatus(Z)V

    const-string v1, "d"

    .line 981
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 982
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Authentication failed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 983
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/Connection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/Connection;->close()V

    const-string p1, "invalid_token"

    .line 985
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 989
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1708(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I

    .line 990
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1700(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 992
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/util/RetryHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/util/RetryHelper;->setMaxDelay()V

    .line 993
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    const-string v0, "Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/."

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
