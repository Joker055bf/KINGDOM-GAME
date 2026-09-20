.class public Lcom/chartboost/sdk/impl/l1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/m1;

.field public b:Landroid/app/Activity;

.field public c:Z

.field public d:Lcom/chartboost/sdk/internal/Model/a;

.field public final synthetic e:Lcom/chartboost/sdk/impl/l1;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/m1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l1$b;->e:Lcom/chartboost/sdk/impl/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l1$b;->b:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/l1$b;->c:Z

    .line 4
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l1$b;->d:Lcom/chartboost/sdk/internal/Model/a;

    .line 7
    iput-object p2, p0, Lcom/chartboost/sdk/impl/l1$b;->a:Lcom/chartboost/sdk/impl/m1;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/l1$a;->b:[I

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l1$b;->a:Lcom/chartboost/sdk/impl/m1;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1$b;->e:Lcom/chartboost/sdk/impl/l1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l1;->b:Lcom/chartboost/sdk/impl/o1;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l1$b;->d:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/o1;->e(Lcom/chartboost/sdk/internal/Model/a;)V

    goto :goto_0

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1$b;->e:Lcom/chartboost/sdk/impl/l1;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/l1;->b:Lcom/chartboost/sdk/impl/o1;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l1$b;->d:Lcom/chartboost/sdk/internal/Model/a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/l1$b;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/internal/Model/a;Landroid/app/Activity;)V

    goto :goto_0

    .line 34
    :pswitch_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1$b;->d:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->q()V

    goto :goto_0

    .line 35
    :pswitch_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1$b;->e:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l1;->d()Lcom/chartboost/sdk/impl/o1;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/chartboost/sdk/impl/l1$b;->d:Lcom/chartboost/sdk/internal/Model/a;

    iget-object v2, v1, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    sget-object v3, Lcom/chartboost/sdk/impl/l3;->d:Lcom/chartboost/sdk/impl/l3;

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/internal/Model/a;)V

    goto :goto_0

    .line 38
    :pswitch_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1$b;->d:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1$b;->d:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->m()Lcom/chartboost/sdk/impl/p1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->J()V

    goto :goto_0

    .line 40
    :pswitch_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1$b;->e:Lcom/chartboost/sdk/impl/l1;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/l1$b;->d:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/l1;->e(Lcom/chartboost/sdk/internal/Model/a;)V

    goto :goto_0

    .line 41
    :pswitch_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l1$b;->e:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l1;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chartboost/sdk/impl/l1$b;->a:Lcom/chartboost/sdk/impl/m1;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CBUIManager"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
