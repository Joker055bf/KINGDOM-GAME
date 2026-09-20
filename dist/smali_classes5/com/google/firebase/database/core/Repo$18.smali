.class Lcom/google/firebase/database/core/Repo$18;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/firebase/database/connection/RequestResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->sendTransactionQueue(Ljava/util/List;Lcom/google/firebase/database/core/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;

.field final synthetic val$queue:Ljava/util/List;

.field final synthetic val$repo:Lcom/google/firebase/database/core/Repo;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Ljava/util/List;Lcom/google/firebase/database/core/Repo;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$18;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$18;->val$path:Lcom/google/firebase/database/core/Path;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$18;->val$queue:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/database/core/Repo$18;->val$repo:Lcom/google/firebase/database/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1066
    invoke-static {p1, p2}, Lcom/google/firebase/database/core/Repo;->access$600(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    .line 1067
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$18;->this$0:Lcom/google/firebase/database/core/Repo;

    const-string v0, "Transaction"

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$18;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-static {p2, v0, v1, p1}, Lcom/google/firebase/database/core/Repo;->access$700(Lcom/google/firebase/database/core/Repo;Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    .line 1068
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    .line 1071
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$18;->val$queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1073
    sget-object v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;->COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v1, v2}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 1074
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$18;->this$0:Lcom/google/firebase/database/core/Repo;

    .line 1075
    invoke-static {v2}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v3

    .line 1076
    invoke-static {v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$18;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v2}, Lcom/google/firebase/database/core/Repo;->access$2200(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/utilities/OffsetClock;

    move-result-object v8

    .line 1075
    invoke-virtual/range {v3 .. v8}, Lcom/google/firebase/database/core/SyncTree;->ackUserWrite(JZZLcom/google/firebase/database/core/utilities/Clock;)Ljava/util/List;

    move-result-object v2

    .line 1074
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1080
    invoke-static {v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1600(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 1081
    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$18;->val$repo:Lcom/google/firebase/database/core/Repo;

    .line 1083
    invoke-static {v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2100(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/database/InternalHelpers;->createReference(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-static {v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 1082
    invoke-static {v3, v2}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    .line 1085
    new-instance v3, Lcom/google/firebase/database/core/Repo$18$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/firebase/database/core/Repo$18$1;-><init>(Lcom/google/firebase/database/core/Repo$18;Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$18;->this$0:Lcom/google/firebase/database/core/Repo;

    new-instance v3, Lcom/google/firebase/database/core/ValueEventRegistration;

    iget-object v4, p0, Lcom/google/firebase/database/core/Repo$18;->this$0:Lcom/google/firebase/database/core/Repo;

    .line 1096
    invoke-static {v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2400(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v5

    .line 1097
    invoke-static {v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2100(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 1093
    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/Repo;->removeEventCallback(Lcom/google/firebase/database/core/EventRegistration;)V

    goto :goto_0

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$18;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$2500(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/utilities/Tree;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$18;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/utilities/Tree;->subTree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/Tree;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/Repo;->access$2600(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 1104
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$18;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$2700(Lcom/google/firebase/database/core/Repo;)V

    .line 1106
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$18;->val$repo:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0, p2}, Lcom/google/firebase/database/core/Repo;->access$500(Lcom/google/firebase/database/core/Repo;Ljava/util/List;)V

    const/4 p2, 0x0

    .line 1109
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 1110
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$18;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1114
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 1115
    iget-object p1, p0, Lcom/google/firebase/database/core/Repo$18;->val$queue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1116
    invoke-static {p2}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1700(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    if-ne v0, v1, :cond_2

    .line 1117
    sget-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {p2, v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    goto :goto_2

    .line 1119
    :cond_2
    sget-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {p2, v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    goto :goto_2

    .line 1123
    :cond_3
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$18;->val$queue:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1124
    sget-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 1125
    invoke-static {v0, p1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2802(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    goto :goto_3

    .line 1131
    :cond_4
    iget-object p1, p0, Lcom/google/firebase/database/core/Repo$18;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$18;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-static {p1, p2}, Lcom/google/firebase/database/core/Repo;->access$1200(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    :cond_5
    return-void
.end method
