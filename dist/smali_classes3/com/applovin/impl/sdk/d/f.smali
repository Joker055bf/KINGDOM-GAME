.class public Lcom/applovin/impl/sdk/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/applovin/impl/sdk/d/f;

.field public static final b:Lcom/applovin/impl/sdk/d/f;

.field public static final c:Lcom/applovin/impl/sdk/d/f;

.field public static final d:Lcom/applovin/impl/sdk/d/f;

.field public static final e:Lcom/applovin/impl/sdk/d/f;

.field public static final f:Lcom/applovin/impl/sdk/d/f;

.field public static final g:Lcom/applovin/impl/sdk/d/f;

.field public static final h:Lcom/applovin/impl/sdk/d/f;

.field public static final i:Lcom/applovin/impl/sdk/d/f;

.field public static final j:Lcom/applovin/impl/sdk/d/f;

.field public static final k:Lcom/applovin/impl/sdk/d/f;

.field public static final l:Lcom/applovin/impl/sdk/d/f;

.field public static final m:Lcom/applovin/impl/sdk/d/f;

.field public static final n:Lcom/applovin/impl/sdk/d/f;

.field public static final o:Lcom/applovin/impl/sdk/d/f;

.field public static final p:Lcom/applovin/impl/sdk/d/f;

.field public static final q:Lcom/applovin/impl/sdk/d/f;

.field public static final r:Lcom/applovin/impl/sdk/d/f;

.field public static final s:Lcom/applovin/impl/sdk/d/f;

.field public static final t:Lcom/applovin/impl/sdk/d/f;

.field private static final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/sdk/d/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->u:Ljava/util/Set;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->w:Ljava/util/Set;

    const-string v0, "ad_req"

    .line 26
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->a:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_imp"

    .line 31
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->b:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "max_ad_imp"

    .line 36
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->c:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_session_start"

    .line 41
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_imp_session"

    .line 46
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->e:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "max_ad_imp_session"

    .line 51
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->f:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "cached_files_expired"

    .line 56
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->g:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "cache_drop_count"

    .line 61
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->h:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "sdk_reset_state_count"

    const/4 v1, 0x1

    .line 66
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->i:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_response_process_failures"

    .line 71
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->j:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "response_process_failures"

    .line 76
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->k:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "incent_failed_to_display_count"

    .line 81
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->l:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "app_paused_and_resumed"

    .line 86
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->m:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_rendered_with_mismatched_sdk_key"

    .line 91
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->n:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_shown_outside_app_count"

    .line 96
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->o:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "med_ad_req"

    .line 105
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->p:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "med_ad_response_process_failures"

    .line 110
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->q:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "med_waterfall_ad_no_fill"

    .line 115
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->r:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "med_waterfall_ad_adapter_load_failed"

    .line 120
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->s:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "med_waterfall_ad_invalid_response"

    .line 125
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->t:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "fullscreen_ad_nil_vc_count"

    .line 132
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    const-string v0, "applovin_bundle_missing"

    .line 133
    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/applovin/impl/sdk/d/f;->v:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;
    .locals 2

    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    sget-object v0, Lcom/applovin/impl/sdk/d/f;->u:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Lcom/applovin/impl/sdk/d/f;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/d/f;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 166
    sget-object p0, Lcom/applovin/impl/sdk/d/f;->w:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    .line 159
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key has already been used: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No key name specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/sdk/d/f;",
            ">;"
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/applovin/impl/sdk/d/f;->w:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->v:Ljava/lang/String;

    return-object v0
.end method
