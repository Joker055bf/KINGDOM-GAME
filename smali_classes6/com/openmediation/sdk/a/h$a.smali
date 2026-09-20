.class Lcom/openmediation/sdk/a/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/a/h;->b(Lcom/crosspromotion/sdk/bean/AdBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/openmediation/sdk/a/h;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/a/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/h$a;->b:Lcom/openmediation/sdk/a/h;

    iput-object p2, p0, Lcom/openmediation/sdk/a/h$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/a/h$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/ResDownloader;->downloadFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
