.class Lcom/android/settings_ex/hb;
.super Ljava/lang/Object;
.source "ScreenButtonAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic yu:Lcom/android/settings_ex/ScreenButtonAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ScreenButtonAlertActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings_ex/hb;->yu:Lcom/android/settings_ex/ScreenButtonAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/hb;->yu:Lcom/android/settings_ex/ScreenButtonAlertActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/ScreenButtonAlertActivity;->finish()V

    .line 44
    return-void
.end method
