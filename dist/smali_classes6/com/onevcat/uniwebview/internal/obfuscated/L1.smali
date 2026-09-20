.class public final Lcom/onevcat/uniwebview/internal/obfuscated/L1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/L1;->a:I

    iput p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/L1;->b:I

    iput-boolean p3, p0, Lcom/onevcat/uniwebview/internal/obfuscated/L1;->c:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/onevcat/uniwebview/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 4
    iget v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/L1;->a:I

    iget v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/L1;->b:I

    iget-boolean v2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/L1;->c:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/onevcat/uniwebview/a;->a(IIZ)V

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
