.class final Lcom/android/settings_ex/dndmode/a;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bV(I)[Lcom/android/settings_ex/dndmode/Alarm;
    .locals 1

    .prologue
    .line 28
    new-array v0, p1, [Lcom/android/settings_ex/dndmode/Alarm;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dndmode/a;->o(Landroid/os/Parcel;)Lcom/android/settings_ex/dndmode/Alarm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dndmode/a;->bV(I)[Lcom/android/settings_ex/dndmode/Alarm;

    move-result-object v0

    return-object v0
.end method

.method public o(Landroid/os/Parcel;)Lcom/android/settings_ex/dndmode/Alarm;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/android/settings_ex/dndmode/Alarm;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/dndmode/Alarm;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
