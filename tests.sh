SUPPORT_VERSION=2.0

PROJECT_NAME="Jenkins"
PROJECT_PATH="`pwd`/${PROJECT_NAME}.xcodeproj/project.pbxproj"
PROJECT_VERSION=$(cat "${PROJECT_PATH}" | grep -m1 'MARKETING_VERSION' | awk -F= '{print $2}' | tr -d ' ";')

if [ "${PROJECT_VERSION}" == "${SUPPORT_VERSION}" ] ; then
  echo "Supported version ${PROJECT_VERSION}."
else
  echo "The project version(${PROJECT_VERSION}) must be ${SUPPORT_VERSION} or greater."
  exit -1
fi
