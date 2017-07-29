.class Lcom/android/settings_ex/ia;
.super Ljava/lang/Object;
.source "ToggleArrangementFragment.java"

# interfaces
.implements Lmiui/app/ToggleManager$OnToggleChangedListener;


# instance fields
.field final synthetic Bg:Lcom/android/settings_ex/ToggleArrangementFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ToggleArrangementFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings_ex/ia;->Bg:Lcom/android/settings_ex/ToggleArrangementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/ia;->Bg:Lcom/android/settings_ex/ToggleArrangementFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ToggleArrangementFragment;->a(Lcom/android/settings_ex/ToggleArrangementFragment;)Lcom/android/settings_ex/ib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/ib;->notifyDataSetChanged()V

    .line 103
    return-void
.end method
