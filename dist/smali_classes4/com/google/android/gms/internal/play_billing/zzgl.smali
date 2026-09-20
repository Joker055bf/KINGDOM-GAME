.class public Lcom/google/android/gms/internal/play_billing/zzgl;
.super Lcom/google/android/gms/internal/play_billing/zzez;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_billing/zzgp<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_billing/zzgl<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/play_billing/zzez<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/play_billing/zzgp;

.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzgp;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzez;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zzb:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzs()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zza()Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzib;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzg()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/internal/play_billing/zzez;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzg()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/play_billing/zzgl;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zzb:Lcom/google/android/gms/internal/play_billing/zzgp;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgl;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzj()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/play_billing/zzgp;)Lcom/google/android/gms/internal/play_billing/zzgl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zzb:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzn()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzi()Lcom/google/android/gms/internal/play_billing/zzgp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzj()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzo()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzip;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzip;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;)V

    .line 4
    throw v1
.end method

.method public zzj()Lcom/google/android/gms/internal/play_billing/zzgp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    return-object v0
.end method

.method public bridge synthetic zzk()Lcom/google/android/gms/internal/play_billing/zzhr;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzj()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/internal/play_billing/zzhr;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected final zzm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzn()V

    :cond_0
    return-void
.end method

.method protected zzn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zzb:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzs()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    return-void
.end method

.method public final zzo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzE(Lcom/google/android/gms/internal/play_billing/zzgp;Z)Z

    move-result v0

    return v0
.end method
