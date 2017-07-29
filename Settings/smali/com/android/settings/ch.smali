.class Lcom/android/settings_ex/ch;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lc:Lcom/android/settings_ex/cg;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cg;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/settings_ex/ch;->lc:Lcom/android/settings_ex/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/ch;->lc:Lcom/android/settings_ex/cg;

    iget-object v0, v0, Lcom/android/settings_ex/cg;->lb:Lcom/android/settings_ex/DeviceAdminAdd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->a(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method
