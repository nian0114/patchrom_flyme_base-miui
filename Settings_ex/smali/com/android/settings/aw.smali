.class Lcom/android/settings_ex/aw;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic dG:Lcom/android/settings_ex/av;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/av;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/settings_ex/aw;->dG:Lcom/android/settings_ex/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/settings_ex/aw;->dG:Lcom/android/settings_ex/av;

    invoke-virtual {v0}, Lcom/android/settings_ex/av;->dismiss()V

    .line 643
    return-void
.end method
