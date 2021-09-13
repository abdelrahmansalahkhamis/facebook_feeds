part of 'facebook_cubit.dart';

@immutable
abstract class FacebookStates {}

class FacebookInitialState extends FacebookStates {}

class FacebookChangeBottomNavTabsState extends FacebookStates {}

class FacebookLoadingPostState extends FacebookStates {}

class FacebookSuccessLoadingPostState extends FacebookStates {}

class FacebookErrorLoadingPostState extends FacebookStates {}
