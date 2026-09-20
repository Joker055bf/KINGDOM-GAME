.class public final Lcom/onevcat/uniwebview/internal/obfuscated/K0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/K0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/K0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/K0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/onevcat/uniwebview/internal/obfuscated/K0;->d:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/onevcat/uniwebview/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 4
    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/K0;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/K0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/K0;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/K0;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/onevcat/uniwebview/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
