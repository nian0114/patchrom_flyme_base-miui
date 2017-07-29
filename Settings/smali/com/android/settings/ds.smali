.class Lcom/android/settings_ex/ds;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nW:Lcom/android/settings_ex/HomeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/HomeSettings;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/settings_ex/ds;->nW:Lcom/android/settings_ex/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/ds;->nW:Lcom/android/settings_ex/HomeSettings;

    invoke-static {v0}, Lcom/android/settings_ex/HomeSettings;->c(Lcom/android/settings_ex/HomeSettings;)Lcom/android/settings_ex/du;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/du;->setChecked(Z)V

    .line 232
    return-void
.end method
