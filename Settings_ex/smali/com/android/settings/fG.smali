.class Lcom/android/settings_ex/fG;
.super Ljava/lang/Object;
.source "MiuiZonePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic uL:Lcom/android/settings_ex/MiuiZonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MiuiZonePicker;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/fG;->uL:Lcom/android/settings_ex/MiuiZonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/fG;->uL:Lcom/android/settings_ex/MiuiZonePicker;

    invoke-virtual {v0}, Lcom/android/settings_ex/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 84
    return-void
.end method