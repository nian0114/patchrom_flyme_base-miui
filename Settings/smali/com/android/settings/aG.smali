.class Lcom/android/settings_ex/aG;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eu:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/settings_ex/aG;->eu:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/settings_ex/aG;->eu:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eM:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 653
    return-void
.end method
