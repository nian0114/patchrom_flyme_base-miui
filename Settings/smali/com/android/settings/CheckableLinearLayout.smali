.class public Lcom/android/settings_ex/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private da:F

.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 34
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/CheckableLinearLayout;->da:F

    .line 35
    return-void
.end method

.method private al()V
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/CheckableLinearLayout;->getChildCount()I

    move-result v2

    .line 64
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 66
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 67
    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcom/android/settings_ex/CheckableLinearLayout;->mChecked:Z

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 64
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/settings_ex/CheckableLinearLayout;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/settings_ex/CheckableLinearLayout;->mChecked:Z

    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/CheckableLinearLayout;->al()V

    .line 50
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings_ex/CheckableLinearLayout;->getChildCount()I

    move-result v2

    .line 41
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/CheckableLinearLayout;->da:F

    goto :goto_1

    .line 44
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings_ex/CheckableLinearLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CheckableLinearLayout;->setChecked(Z)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
