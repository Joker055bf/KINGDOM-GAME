.class public final Lcom/google/android/gms/internal/play_billing/zzim;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzim;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/play_billing/zzhm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzim;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzim;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzim;->zzb:Lcom/google/android/gms/internal/play_billing/zzim;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzim;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhm;->zza()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzim;->zzd:Lcom/google/android/gms/internal/play_billing/zzhm;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzij;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzim;->zzb:Lcom/google/android/gms/internal/play_billing/zzim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzp()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzij;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/play_billing/zzim;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzim;->zzb:Lcom/google/android/gms/internal/play_billing/zzim;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_billing/zzim;)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzim;->zzd:Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhm;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzim;->zzd:Lcom/google/android/gms/internal/play_billing/zzhm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzb()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzim;->zzd:Lcom/google/android/gms/internal/play_billing/zzhm;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzim;->zzd:Lcom/google/android/gms/internal/play_billing/zzhm;

    return-object p0
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzim;->zzb:Lcom/google/android/gms/internal/play_billing/zzim;

    return-object p1

    .line 6
    :cond_0
    throw p3

    .line 3
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzij;

    .line 4
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzij;-><init>(Lcom/google/android/gms/internal/play_billing/zzil;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzim;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzim;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzd"

    aput-object v0, p1, p3

    .line 2
    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzik;->zza:Lcom/google/android/gms/internal/play_billing/zzhl;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzim;->zzb:Lcom/google/android/gms/internal/play_billing/zzim;

    new-instance p3, Lcom/google/android/gms/internal/play_billing/zzia;

    const-string v0, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    .line 3
    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzia;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
