.class Lcom/openmediation/sdk/core/InitImp$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/utils/OaidHelper$OnGetOaidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/InitImp$2;->onGetGaid(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/core/InitImp$2;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/InitImp$2;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/InitImp$2$1;->this$0:Lcom/openmediation/sdk/core/InitImp$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$2$1;->this$0:Lcom/openmediation/sdk/core/InitImp$2;

    iget-object v1, v0, Lcom/openmediation/sdk/core/InitImp$2;->val$initConfiguration:Lcom/openmediation/sdk/InitConfiguration;

    iget-object v0, v0, Lcom/openmediation/sdk/core/InitImp$2;->val$callback:Lcom/openmediation/sdk/InitCallback;

    invoke-static {v1, v0}, Lcom/openmediation/sdk/core/InitImp;->access$1100(Lcom/openmediation/sdk/InitConfiguration;Lcom/openmediation/sdk/InitCallback;)V

    return-void
.end method
