.class public Lcom/android/settings_ex/applications/AppOpsSummary;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "AppOpsSummary.java"


# static fields
.field static Gh:[Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;


# instance fields
.field private Ge:Landroid/view/ViewGroup;

.field private Gf:Landroid/support/v4/view/ViewPager;

.field Gg:[Ljava/lang/CharSequence;

.field Gi:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->FL:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->FM:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->FN:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->FO:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings_ex/applications/AppOpsState;->FP:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/applications/AppOpsSummary;->Gh:[Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040012

    invoke-virtual {v0, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 104
    iput-object p2, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->Ge:Landroid/view/ViewGroup;

    .line 105
    iput-object v1, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->mRootView:Landroid/view/View;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppOpsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->Gg:[Ljava/lang/CharSequence;

    .line 109
    const v0, 0x7f130025

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->Gf:Landroid/support/v4/view/ViewPager;

    .line 110
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppOpsSummary;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/applications/AppOpsSummary$MyPagerAdapter;-><init>(Lcom/android/settings_ex/applications/AppOpsSummary;Landroid/app/FragmentManager;)V

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->Gf:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 112
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppOpsSummary;->Gf:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 113
    const v0, 0x7f130026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerTabStrip;

    .line 117
    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v2, v5, [I

    const v3, 0x1010435

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v5, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 131
    :cond_0
    return-object v1
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0xf

    return v0
.end method
