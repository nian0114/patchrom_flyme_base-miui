.class Lcom/android/settings_ex/dndmode/l;
.super Ljava/lang/Object;
.source "DoNotDisturbModeFragment.java"

# interfaces
.implements Lmiui/provider/ExtraTelephony$QuietModeEnableListener;


# instance fields
.field final synthetic aaF:Lcom/android/settings_ex/dndmode/k;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dndmode/k;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings_ex/dndmode/l;->aaF:Lcom/android/settings_ex/dndmode/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuietModeEnableChange(Z)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/dndmode/l;->aaF:Lcom/android/settings_ex/dndmode/k;

    invoke-static {v0}, Lcom/android/settings_ex/dndmode/k;->a(Lcom/android/settings_ex/dndmode/k;)V

    .line 47
    return-void
.end method
