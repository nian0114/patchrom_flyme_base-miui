.class Lcom/android/settings_ex/Z;
.super Ljava/lang/Object;
.source "BaseEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic cn:Lcom/android/settings_ex/BaseEditFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BaseEditFragment;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings_ex/Z;->cn:Lcom/android/settings_ex/BaseEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/Z;->cn:Lcom/android/settings_ex/BaseEditFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/BaseEditFragment;->onCancel()V

    .line 46
    return-void
.end method
