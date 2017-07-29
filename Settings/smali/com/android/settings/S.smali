.class Lcom/android/settings_ex/S;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bI:Lcom/android/settings_ex/R;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/R;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/settings_ex/S;->bI:Lcom/android/settings_ex/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 359
    const v0, 0x7f0c114e

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/V;

    .line 360
    iget-object v1, p0, Lcom/android/settings_ex/S;->bI:Lcom/android/settings_ex/R;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/R;->a(Lcom/android/settings_ex/V;)V

    .line 361
    return-void
.end method
