.class public Lcom/chartboost/sdk/impl/z2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:Ljava/io/File;

.field public final g:Ljava/io/File;

.field public final h:Ljava/io/File;

.field public final i:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, ".chartboost"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z2;->a:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string p1, "css"

    .line 6
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/z2;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/z2;->b:Ljava/io/File;

    const-string p1, "html"

    .line 7
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/z2;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/z2;->c:Ljava/io/File;

    const-string p1, "images"

    .line 8
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/z2;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/z2;->d:Ljava/io/File;

    const-string p1, "js"

    .line 9
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/z2;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/z2;->e:Ljava/io/File;

    const-string/jumbo p1, "templates"

    .line 10
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/z2;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/z2;->f:Ljava/io/File;

    const-string/jumbo p1, "videos"

    .line 11
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/z2;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/z2;->g:Ljava/io/File;

    const-string p1, "precache"

    .line 12
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/z2;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/z2;->h:Ljava/io/File;

    const-string p1, "precache_queue"

    .line 13
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/z2;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/z2;->i:Ljava/io/File;

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z2;->a:Ljava/io/File;

    return-object v0
.end method
