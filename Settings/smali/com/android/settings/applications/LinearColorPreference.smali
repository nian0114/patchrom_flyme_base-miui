.class public Lcom/android/settings/applications/LinearColorPreference;
.super Landroid/preference/Preference;
.source "LinearColorPreference.java"


# instance fields
.field JA:F

.field JG:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

.field JH:I

.field JS:I

.field JT:I

.field JU:I

.field Jy:F

.field Jz:F


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 67
    const v0, 0x7f1301c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->aq(Z)V

    .line 70
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->JS:I

    iget v2, p0, Lcom/android/settings/applications/LinearColorPreference;->JT:I

    iget v3, p0, Lcom/android/settings/applications/LinearColorPreference;->JU:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->a(III)V

    .line 71
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->Jy:F

    iget v2, p0, Lcom/android/settings/applications/LinearColorPreference;->Jz:F

    iget v3, p0, Lcom/android/settings/applications/LinearColorPreference;->JA:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->a(FFF)V

    .line 72
    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->JH:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->aL(I)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorPreference;->JG:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->a(Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;)V

    .line 74
    return-void
.end method
